#Function to send Telegram messages
Function Send-Telegram {
Param([Parameter(Mandatory=$true)][String]$Message)
$Telegramtoken = "1485836259:AAGDxr7XMnTRyTaxgyNGFdMXBAaLrzP2J_w"
$Telegramchatid = "@modniy_alert"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$Response = Invoke-RestMethod -Uri "https://api.telegram.org/bot$($Telegramtoken)/sendMessage?chat_id=$($Telegramchatid)&text=$($Message)"}
#Собрать строку в сообщение 
$hostname = hostname
Send-Telegram -Message "TT $hostname Gosti OFF"


#save run logs with data
#GEt-date >> D:\log155_rdp.txt

#kill processes
taskkill /F /IM ch* /T
taskkill /F /IM bitrix* /T
taskkill /F /IM telegram* /T
taskkill /F /IM otsale38.exe /T
taskkill /F /IM ottrade38.exe /T
taskkill /F /IM ot*.exe /T

taskkill /F /IM wkps* /T
taskkill /F /IM mstsc* /T
#taskkill /F /IM ex* /T
taskkill /F /IM next* /T
#taskkill /F /IM explore* /T
taskkill /F /IM notepad* /T

#Disable MSSQLSERVER
Set-Service MSSQLSERVER -StartupType "Disabled"
Stop-Service -Name MSSQLSERVER

#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisallowRun /t REG_DWORD /d 1 /y /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v DisallowRun /t REG_DWORD /d 1 /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /d OTSale38.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 2 /d OTTrade38.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 3 /d chrome.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 4 /d iexplorer.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 5 /d openvpn-gui.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 6 /d mstsc.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 7 /d nextcloud.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 8 /d telegram.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 9 /d notepad.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 10 /d bitrix.exe /f
#REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 11 /d bitrix24.exe /f
net use * /delete /Y


#Enable MSSQLSERVER
#Set-Service MSSQLSERVER -StartupType "Automatic"
#Start-Service -Name MSSQLSERVER

#stop and startup services
Set-Service OpenVPNService -StartupType "Disabled"
Stop-Service -Name OpenVPNService
#Set-Service MSSQLSERVER -StartupType "Disabled"
#Set-Service MSSQLSERVER -StartupType "Automatic"
#Set-Service -Name OpenVPNService -status "stopped"
#Set-Service -Name MSSQLSERVER -status "stopped"
#Set-Service -Name MSSQLSERVER -status "Running"
#Stop-Service -Name MSSQLSERVER
#Start-Service -Name MSSQLSERVER

#off autologon


#reg export "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" "C:\script\test2$(get-date -f yyyy-MM-dd).txt"
#REG DELETE "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v "AutoLogonSID" /f

#reboot
#shutdown -r -t 0