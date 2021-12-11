#$encpwd = Get-Content C:\script\gmspassword.bin
#$passwd = ConvertTo-SecureString $encpwd
#$cred = new-object System.Management.Automation.PSCredential 'gmsadmin',$passwd
#Start-Process powershell.exe -Credential $cred

#Start-Process -FilePath "powershell" -Verb RunAs 
#Start-Process -FilePath "notepad" -Verb RunAs 
#start-process powershell -argument "C:\Scripts\test.ps1 TestBackup"
#Set-Service MSSQLSERVER -StartupType "Disabled"

#Если включен UAC, то мало запустить скрипт под учеткой администратора системы, нужно еще зайти в режим Администратор в Powershell
#В сценарии использования в планировщике не нужно запускать скрипт под админом в самом PS, достаточно запустить из-под этого админа в планировщике
Start-Process -FilePath "powershell" "C:\Script\test_tl.ps1" -Verb RunAs 