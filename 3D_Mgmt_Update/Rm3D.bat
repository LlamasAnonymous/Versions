cd \

taskkill /im powershell.exe /f
taskkill /im pwsh.exe /f

Timeout 1

rd "C:\3D_File_Mgmt" /s /q

git clone https://github.com/LlamasAnonymous/3D_File_Mgmt.git C:\3D_File_Mgmt

Start pwsh -WindowStyle Hidden "C:\3D_File_Mgmt\3D_File_Mgmt.ps1"

Start pwsh "C:\3D_File_Mgmt\Update\Version_R.ps1"