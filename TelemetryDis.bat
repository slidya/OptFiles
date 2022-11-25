@echo off

if not exist "%Temp%\NSudo.exe" (
curl -L "https://github.com/slidya/OptFiles/raw/main/NSudo.exe" -o "%Temp%\NSudo.exe"
)

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DiagTrack" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\diagsvc" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\dmwappushservice" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\diagnosticshub.standardcollector.service" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdiSystemHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\WdiServiceHost" /v "Start" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\DPS" /v "Start" /t REG_DWORD /d "4" /f
FOR /f %%i IN ('reg query "HKLM\SYSTEM\CurrentControlSet\Services" /k /f "ConsentUxUserSvc"^| FIND /i "ConsentUxUserSvc"') DO (reg add "%%i" /v "Start" /t reg_dword /d 4 /f)

schtasks /change /tn "Microsoft\Office\Office ClickToRun Service Monitor" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetry\AgentFallBack2016" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetry\AgentFallBack2016" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetry\OfficeTelemetryAgentLogOn2016" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetryAgentFallBack2016" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetryAgentLogOn2016" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetryAgentFallBack" /disable
schtasks /change /tn "Microsoft\Office\OfficeTelemetryAgentLogOn" /disable
schtasks /change /tn "Microsoft\Office\Office 15 Subscription Heartbeat" /disable
move %WinDir%\System32\CompatTelRunner.exe %LocalAppData%

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AutoLogger-Diagtrack-Listener" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Status" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Status" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Diagtrack-Listener" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-AirSpaceChannel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-AirSpaceChannel" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Application" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-DebugChannel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-DebugChannel" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Microsoft-RMS-MSIPC-Debug" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Microsoft-RMS-MSIPC-Debug" /v "Status" /t REG_DWORD /d "0" /f

Start "" /wait "%Temp%\NSudo.exe" -U:T -P:E -ShowWindowMode:Hide cmd /c Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Security" /v "Start" /t REG_DWORD /d "0" /f
Start "" /wait "%Temp%\NSudo.exe" -U:T -P:E -ShowWindowMode:Hide cmd /c Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-Security" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\EventLog-System" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Rdp-Graphics-RdpIdd-Trace" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Status" /t REG_DWORD /d "0" /f

Start "" /wait "%Temp%\NSudo.exe" -U:T -P:E -ShowWindowMode:Hide cmd /c Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore" /v "Start" /t REG_DWORD /d "0" /f
Start "" /wait "%Temp%\NSudo.exe" -U:T -P:E -ShowWindowMode:Hide cmd /c Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NetCore" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NtfsLog" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Status" /t REG_DWORD /d "0" /f

Start "" /wait "%Temp%\NSudo.exe" -U:T -P:E -ShowWindowMode:Hide cmd /c Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr" /v "Start" /t REG_DWORD /d "0" /f
Start "" /wait "%Temp%\NSudo.exe" -U:T -P:E -ShowWindowMode:Hide cmd /c Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RadioMgr" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReFSLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReFSLog" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Status" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Status" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WifiDriverSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WifiDriverSession" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Status" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Status" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\GlobalLogger" /v "Status" /t REG_DWORD /d "0" /f

exit