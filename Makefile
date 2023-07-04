ifneq ($(findstring MINGW,$(shell uname)),)
  WINDOWS := 1
endif
ifneq ($(findstring MSYS,$(shell uname)),)
  WINDOWS := 1
endif

VERBOSE ?= 0

ifeq ($(VERBOSE),0)
  QUIET := @
endif

#-------------------------------------------------------------------------------
# Files
#-------------------------------------------------------------------------------

NAME := pikmin
VERSION := usa.1
#VERSION := usa.0

# Overkill epilogue fixup strategy. Set to 1 if necessary.
EPILOGUE_PROCESS := 1

BUILD_DIR := build/$(NAME).$(VERSION)
ifeq ($(EPILOGUE_PROCESS),1)
EPILOGUE_DIR := epilogue/$(NAME).$(VERSION)
endif

# Inputs
S_FILES := $(wildcard asm/*.s)
C_FILES := $(wildcard src/*.c)
CPP_FILES := $(wildcard src/*.cpp)
CPP_FILES += $(wildcard src/*.cp)
LDSCRIPT := ldscript.lcf

# Outputs
DOL     := $(BUILD_DIR)/main.dol
ELF     := $(DOL:.dol=.elf)
MAP     := $(BUILD_DIR)/build.map

include obj_files.mk
ifeq ($(EPILOGUE_PROCESS),1)
include e_files.mk
endif

O_FILES :=	$(GROUP_0_FILES) $(SYSBOOTUP) $(JAUDIO) $(HVQM4DEC) $(SYSCOMMON) $(SYSDOLPHIN)\
			$(COLIN) $(KANDO) $(NAKATA) $(NISHIMURA) $(OGAWA) $(YAMASHITA)\
			$(BASE) $(OS) $(DB) $(MTX) $(DVD) $(VI) $(PAD) $(AI) $(AR) $(DSP)\
			$(CARD) $(HIO) $(GX) $(RUNTIME) $(MSL_C) $(TRK_MINNOW_DOLPHIN)\
			$(AMCEXI2) $(AMCNOTSTUB) $(ODEMUEXI2) $(ODENOTSTUB)
ifeq ($(EPILOGUE_PROCESS),1)
E_FILES :=	$(EPILOGUE_UNSCHEDULED)
endif
#-------------------------------------------------------------------------------
# Tools
#-------------------------------------------------------------------------------

MWCC_VERSION := 1.2.5
ifeq ($(EPILOGUE_PROCESS),1)
MWCC_EPI_VERSION := 1.2.5e
MWCC_EPI_EXE := mwcceppc.exe
endif
MWLD_VERSION := 1.1

# Programs
ifeq ($(WINDOWS),1)
  WINE :=
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as.exe
  PYTHON  := python
else
  WINE ?= wine
  AS      := $(DEVKITPPC)/bin/powerpc-eabi-as
  PYTHON  := python3
endif
CC      = $(WINE) tools/mwcc_compiler/$(MWCC_VERSION)/mwcceppc.exe
ifeq ($(EPILOGUE_PROCESS),1)
CC_EPI  = $(WINE) tools/mwcc_compiler/$(MWCC_EPI_VERSION)/$(MWCC_EPI_EXE)
endif
LD      := $(WINE) tools/mwcc_compiler/$(MWLD_VERSION)/mwldeppc.exe
DTK     := tools/dtk
ELF2DOL := $(DTK) elf2dol
SHASUM  := $(DTK) shasum

FRANK := tools/frank.py

# Options
INCLUDES := -i include/
ASM_INCLUDES := -I include/

ASFLAGS := -mgekko $(ASM_INCLUDES)
LDFLAGS := -map $(MAP) -fp hard -nodefaults
CFLAGS   = -Cpp_exceptions off -O4,p -fp hard -proc gekko -nodefaults -RTTI on $(INCLUDES)

$(JAUDIO): CFLAGS += -func_align 32
$(MSL_C): CFLAGS += -fp_contract on

#-------------------------------------------------------------------------------
# Recipes
#-------------------------------------------------------------------------------

### Default target ###

default: all

all: $(DOL)

ALL_DIRS := $(sort $(dir $(O_FILES)))
ifeq ($(EPILOGUE_PROCESS),1)
EPI_DIRS := $(sort $(dir $(E_FILES)))
endif

# Make sure build directory exists before compiling anything
DUMMY != mkdir -p $(ALL_DIRS)

ifeq ($(EPILOGUE_PROCESS),1)
# Make sure profile directory exists before compiling anything
DUMMY != mkdir -p $(EPI_DIRS)
endif

.PHONY: tools

# DOL creation makefile instructions
$(DOL): $(ELF) | $(DTK)
	@echo Converting $< to $@
	$(QUIET) $(ELF2DOL) $< $@
	$(QUIET) $(SHASUM) -c sha1/$(NAME).$(VERSION).sha1
	$(QUIET) $(PYTHON) tools/calcprogress.py $(DOL) $(MAP)

clean:
	rm -f -d -r build
	rm -f -d -r epilogue

tools/dtk: tools/dtk_version
	@echo "Downloading $@"
	$(QUIET) $(PYTHON) tools/download_dtk.py $< $@

# ELF creation makefile instructions
ifeq ($(EPILOGUE_PROCESS),1)
	@echo Linking ELF $@
$(ELF): $(O_FILES) $(E_FILES) $(LDSCRIPT)
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files
else
$(ELF): $(O_FILES) $(LDSCRIPT)
	@echo Linking ELF $@
	$(QUIET) @echo $(O_FILES) > build/o_files
	$(QUIET) $(LD) $(LDFLAGS) -o $@ -lcf $(LDSCRIPT) @build/o_files
endif

$(BUILD_DIR)/%.o: %.s
	@echo Assembling $<
	$(QUIET) $(AS) $(ASFLAGS) -o $@ $<

$(BUILD_DIR)/%.o: %.c
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<

$(BUILD_DIR)/%.o: %.cp
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<
	
$(BUILD_DIR)/%.o: %.cpp
	@echo "Compiling " $<
	$(QUIET) $(CC) $(CFLAGS) -c -o $@ $<

ifeq ($(EPILOGUE_PROCESS),1)
$(EPILOGUE_DIR)/%.o: %.c $(BUILD_DIR)/%.o
	@echo Frank is fixing $<
	$(QUIET) $(CC_EPI) $(CFLAGS) -c -o $@ $<
	$(QUIET) $(PYTHON) $(FRANK) $(word 2,$^) $@ $(word 2,$^)
	$(QUIET) touch $@

$(EPILOGUE_DIR)/%.o: %.cp $(BUILD_DIR)/%.o
	@echo Frank is fixing $<
	$(QUIET) $(CC_EPI) $(CFLAGS) -c -o $@ $<
	$(QUIET) $(PYTHON) $(FRANK) $(word 2,$^) $@ $(word 2,$^)
	$(QUIET) touch $@

$(EPILOGUE_DIR)/%.o: %.cpp $(BUILD_DIR)/%.o
	@echo Frank is fixing $<
	$(QUIET) $(CC_EPI) $(CFLAGS) -c -o $@ $<
	$(QUIET) $(PYTHON) $(FRANK) $(word 2,$^) $@ $(word 2,$^)
	$(QUIET) touch $@
endif

### Debug Print ###

print-% : ; $(info $* is a $(flavor $*) variable set to [$($*)]) @true
