#$encpwd = Get-Content C:\script\gmspassword.bin
#$passwd = ConvertTo-SecureString $encpwd
#$cred = new-object System.Management.Automation.PSCredential 'gmsadmin',$passwd
#Start-Process powershell.exe -Credential $cred

#Start-Process -FilePath "powershell" -Verb RunAs 
#Start-Process -FilePath "notepad" -Verb RunAs 
#start-process powershell -argument "C:\Scripts\test.ps1 TestBackup"
#Set-Service MSSQLSERVER -StartupType "Disabled"

#���� ������� UAC, �� ���� ��������� ������ ��� ������� �������������� �������, ����� ��� ����� � ����� ������������� � Powershell
#� �������� ������������� � ������������ �� ����� ��������� ������ ��� ������� � ����� PS, ���������� ��������� ��-��� ����� ������ � ������������
Start-Process -FilePath "powershell" "C:\Script\off.ps1" -Verb RunAs 