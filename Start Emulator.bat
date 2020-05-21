echo off
xcopy socat\.emulator_console_auth_token %UserProfile% /y
cd avd
@echo avd.ini.encoding=UTF-8 > Full_Android_Pie_For_PC.ini
@echo path=%cd%\Full_Android_Pie_For_PC.avd >> Full_Android_Pie_For_PC.ini
@echo path.rel=avd\Full_Android_Pie_For_PC.avd >> Full_Android_Pie_For_PC.ini
@echo target=android-Q >> Full_Android_Pie_For_PC.ini
cd..
cd emulator
set ANDROID_AVD_HOME=..\avd
start /min emulator.exe @Full_Android_Pie_For_PC -writable-system