# Linker order for every file, passed to the Metrowerks linker.

GROUP_0_FILES :=\
	$(BUILD_DIR)/asm/ctors.o\
	$(BUILD_DIR)/asm/dtors.o\
	$(BUILD_DIR)/asm/rodata.o\
	$(BUILD_DIR)/asm/data.o\
	$(BUILD_DIR)/asm/bss.o\
	$(BUILD_DIR)/asm/sdata.o\
	$(BUILD_DIR)/asm/sbss.o\
	$(BUILD_DIR)/asm/sdata2.o\
	$(BUILD_DIR)/asm/sdata2_1.o\
	$(BUILD_DIR)/asm/sdata2_1c.o\
	$(BUILD_DIR)/asm/sdata2_1b.o\
	$(BUILD_DIR)/asm/sdata2_1a.o\
	$(BUILD_DIR)/asm/sdata2_2.o\

TEXT_O_FILES :=\
	$(BUILD_DIR)/asm/sysBootup.o\
	$(BUILD_DIR)/asm/text_0.o\
	$(BUILD_DIR)/src/sysCommon/string.o\
	$(BUILD_DIR)/asm/text_80025914.o\
	$(BUILD_DIR)/src/sysCommon/shpRoutes.o\
	$(BUILD_DIR)/asm/text_1.o\
	$(BUILD_DIR)/src/sysCommon/matMath.o\
	$(BUILD_DIR)/asm/sysCommon/matMath.o\
	$(BUILD_DIR)/asm/sysCommon/stdSystem.o\
	$(BUILD_DIR)/asm/sysCommon/node.o\
	$(BUILD_DIR)/src/sysCommon/timers.o\
	$(BUILD_DIR)/asm/sysCommon/controller.o\
	$(BUILD_DIR)/asm/sysCommon/cmdStream.o\
	$(BUILD_DIR)/asm/sysCommon/camera.o\
	$(BUILD_DIR)/asm/sysCommon/atx.o\
	$(BUILD_DIR)/asm/sysCommon/id32.o\
	$(BUILD_DIR)/asm/text_80044194.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/genBoss.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Boss.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossAnimMgr.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossCnd.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossMgr.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/BossShapeObj.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/Spider.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SpiderAi.o\
	$(BUILD_DIR)/asm/plugPikiNishimura/SpiderLeg.o\
	$(BUILD_DIR)/asm/text_Nishimura.o\
	$(BUILD_DIR)/asm/os/OS.o\
	$(BUILD_DIR)/asm/os/OSAlarm.o\
	$(BUILD_DIR)/asm/os/OSAlloc.o\
	$(BUILD_DIR)/src/os/OSArena.o\
	$(BUILD_DIR)/asm/os/OSAudioSystem.o\
	$(BUILD_DIR)/asm/os/OSCache.o\
	$(BUILD_DIR)/asm/os/OSContext.o\
	$(BUILD_DIR)/asm/os/OSError.o\
	$(BUILD_DIR)/asm/os/OSExi.o\
	$(BUILD_DIR)/asm/os/OSFont.o\
	$(BUILD_DIR)/asm/os/OSInterrupt.o\
	$(BUILD_DIR)/asm/os/OSLink.o\
	$(BUILD_DIR)/asm/os/OSMessage.o\
	$(BUILD_DIR)/asm/os/OSMutex.o\
	$(BUILD_DIR)/asm/os/OSReboot.o\
	$(BUILD_DIR)/asm/os/OSReset.o\
	$(BUILD_DIR)/asm/os/OSResetSW.o\
	$(BUILD_DIR)/asm/os/OSRtc.o\
	$(BUILD_DIR)/asm/os/OSSerial.o\
	$(BUILD_DIR)/asm/os/OSSync.o\
	$(BUILD_DIR)/asm/os/OSThread.o\
	$(BUILD_DIR)/asm/os/OSTime.o\
	$(BUILD_DIR)/asm/os/OSUartExi.o\
	$(BUILD_DIR)/src/os/__start.o\
	$(BUILD_DIR)/asm/os/__ppc_eabi_init.o\
	$(BUILD_DIR)/asm/db/db.o\
	$(BUILD_DIR)/asm/mtx/mtx.o\
	$(BUILD_DIR)/asm/mtx/mtx44.o\
	$(BUILD_DIR)/asm/mtx/vec.o\
	$(BUILD_DIR)/asm/dvd/dvdlow.o\
	$(BUILD_DIR)/asm/dvd/dvdfs.o\
	$(BUILD_DIR)/asm/dvd/dvd.o\
	$(BUILD_DIR)/asm/dvd/dvdqueue.o\
	$(BUILD_DIR)/asm/dvd/dvderror.o\
	$(BUILD_DIR)/asm/dvd/fstload.o\
	$(BUILD_DIR)/asm/vi/vi.o\
	$(BUILD_DIR)/asm/pad/Padclamp.o\
	$(BUILD_DIR)/asm/pad/Pad.o\
	$(BUILD_DIR)/asm/ai/ai.o\
	$(BUILD_DIR)/asm/ar/ar.o\
	$(BUILD_DIR)/asm/ar/arq.o\
	$(BUILD_DIR)/asm/dsp/dsp.o\
	$(BUILD_DIR)/asm/card/CARDBios.o\
	$(BUILD_DIR)/asm/card/CARDRdwr.o\
	$(BUILD_DIR)/asm/card/CARDBlock.o\
	$(BUILD_DIR)/asm/card/CARDDir.o\
	$(BUILD_DIR)/asm/card/CARDCheck.o\
	$(BUILD_DIR)/asm/card/CARDMount.o\
	$(BUILD_DIR)/asm/card/CARDFormat.o\
	$(BUILD_DIR)/asm/card/CARDOpen.o\
	$(BUILD_DIR)/asm/card/CARDCreate.o\
	$(BUILD_DIR)/asm/card/CARDRead.o\
	$(BUILD_DIR)/asm/card/CARDWrite.o\
	$(BUILD_DIR)/asm/card/CARDDelete.o\
	$(BUILD_DIR)/asm/card/CARDStat.o\
	$(BUILD_DIR)/asm/card/CARDRename.o\
	$(BUILD_DIR)/asm/hio/hio.o\
	$(BUILD_DIR)/asm/gx/GXInit.o\
	$(BUILD_DIR)/asm/gx/GXFifo.o\
	$(BUILD_DIR)/asm/gx/GXAttr.o\
	$(BUILD_DIR)/asm/gx/GXMisc.o\
	$(BUILD_DIR)/asm/gx/GXGeometry.o\
	$(BUILD_DIR)/asm/gx/GXFrameBuf.o\
	$(BUILD_DIR)/asm/gx/GXLight.o\
	$(BUILD_DIR)/asm/gx/GXTexture.o\
	$(BUILD_DIR)/asm/gx/GXBump.o\
	$(BUILD_DIR)/asm/gx/GXTev.o\
	$(BUILD_DIR)/asm/gx/GXPixel.o\
	$(BUILD_DIR)/src/gx/GXStubs.o\
	$(BUILD_DIR)/asm/gx/GXDisplayList.o\
	$(BUILD_DIR)/asm/gx/GXTransform.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__mem.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__va_arg.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/global_destructor_chain.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/CPlusLibPPC.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/NMWException.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ptmf.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/ExceptionPPC.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/runtime.o\
	$(BUILD_DIR)/asm/Runtime/PPCEABI/H/__init_cpp_exceptions.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/abort_exit.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/errno.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/ansi_fp.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/arith.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/buffer_io.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/critical_regions.ppc_eabi.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/ctype.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/ansi_files.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/locale.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/direct_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/mbstring.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/mem.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/mem_funcs.o\
	$(BUILD_DIR)/src/MSL_C/PPCEABI/bare/H/misc_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/printf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/rand.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/scanf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/string.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/strtold.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/strtoul.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/uart_console_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/wchar_io.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/float.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/e_asin.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/e_atan2.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/e_pow.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/fminmaxdim.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/s_atan.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/s_copysign.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/s_frexp.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/s_ldexp.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/w_atan2.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/w_pow.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/hyperbolicsf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/inverse_trig.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/trigf.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/math_inlines.o\
	$(BUILD_DIR)/asm/MSL_C/PPCEABI/bare/H/common_float_tables.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mainloop.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/nubevent.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/nubinit.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msg.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msgbuf.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/serpoll.o\
	$(BUILD_DIR)/src/TRK_MINNOW_DOLPHIN/serpoll.o\
	$(BUILD_DIR)/src/TRK_MINNOW_DOLPHIN/usr_put.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dispatch.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/msghndlr.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/support.o\
	$(BUILD_DIR)/src/TRK_MINNOW_DOLPHIN/mutex_TRK.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/notify.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/flush_cache.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mem_TRK.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/__exception.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targimpl.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dolphin_trk.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/mpc_7xx_603e.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/main_TRK.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/dolphin_trk_glue.o\
	$(BUILD_DIR)/asm/TRK_MINNOW_DOLPHIN/targcont.o\
	$(BUILD_DIR)/asm/amcExi2/AmcExi.o\
	$(BUILD_DIR)/asm/amcExi2/AmcExi2Comm.o\
	$(BUILD_DIR)/src/amcnotstub/amcnotstub.o\
	$(BUILD_DIR)/asm/OdemuExi2/DebuggerDriver.o\
	$(BUILD_DIR)/src/odenotstub/odenotstub.o\
