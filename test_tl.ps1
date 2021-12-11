
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

