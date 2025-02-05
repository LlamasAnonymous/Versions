taskkill /im powershell.exe /f
taskkill /im pwsh.exe /f

start /min pwsh -WindowStyle Hidden -File "C:\Versions\3D_Mgmt_Update\Setup.ps1"
Timeout 1