taskkill /im powershell.exe /f
taskkill /im pwsh.exe /f

rd "C:\3D_File_Mgmt" /s /q

git clone https://github.com/LlamasAnonymous/3D_File_Mgmt.git C:\3D_File_Mgmt

Start /min pwsh.exe -WindowStyle Hidden -file "C:\3D_File_Mgmt\3D_File_Mgmt.ps1"

Start pwsh.exe -file "C:\3D_File_Mgmt\Update\Version_R.ps1"