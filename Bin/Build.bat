@ECHO OFF
IF NOT "%XDev%"=="" GOTO XDev
ECHO Please set system variable XDev=X:\Path\To\XDev
PAUSE
EXIT

:XDev

SET CodeAdr=25000
SET DataAdr=50000
SET Modules=e4vm_core.rel e4vm_core_ext.rel e4vm_mem.rel e4vm_comment.rel e4vm_rw.rel e4vm_utils.rel e4vm_stack.rel e4vm_math.rel e4vm_boolean.rel
SET Include=-I ..\Lib\C -I ..\Lib\Obj
SET Target=TAP
SET Clean=FALSE

%XDev%\ZXDev\Bin\Build.bat %1
