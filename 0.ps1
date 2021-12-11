#GEt-date >> C:\script\LOG\log0.txt

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

#Send message to group "Проверка ТТ"
Function Send-Telegram {
Param([Parameter(Mandatory=$true)][String]$Message)
$Telegramtoken = "2033850679:AAGlJlCMYLc8CkBV1ZoQqSd5M0fO8jJOl2A"
$Telegramchatid = "-501464326"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$Response = Invoke-RestMethod -Uri "https://api.telegram.org/bot$($Telegramtoken)/sendMessage?chat_id=$($Telegramchatid)&text=$($Message)"}
Собрать строку в сообщение 
$hostname = hostname
Send-Telegram -Message "TT $hostname Gosti OFF"

#Send message to group "ЧС"
Function Send-Telegram {
Param([Parameter(Mandatory=$true)][String]$Message)
$Telegramtoken = "1485836259:AAGDxr7XMnTRyTaxgyNGFdMXBAaLrzP2J_w"
$Telegramchatid = "-1001663768339"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$Response = Invoke-RestMethod -Uri "https://api.telegram.org/bot$($Telegramtoken)/sendMessage?chat_id=$($Telegramchatid)&text=$($Message)"}
#Собрать строку в сообщение 
$hostname = hostname
Send-Telegram -Message "TT $hostname Gosti OFF"

REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v DisallowRun /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v DisallowRun /t REG_DWORD /d 1 /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 1 /d OTSale38.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 2 /d OTTrade38.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 3 /d chrome.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 4 /d iexplorer.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 5 /d openvpn-gui.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 6 /d mstsc.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 7 /d nextcloud.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 8 /d telegram.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 9 /d notepad.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 10 /d bitrix.exe /f
REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\DisallowRun" /v 11 /d bitrix24.exe /f
net use * /delete /Y

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

#Запуск задания
C:\Windows\System32\schtasks.exe /run /tn "OFF"