taskkill /im powershell.exe /f
taskkill /im pwsh.exe /f

rd "C:\3D_File_Mgmt_Beta" /s /q

git clone https://github.com/LlamasAnonymous/3D_File_Mgmt_Beta.git C:\3D_File_Mgmt_Beta

Start /min pwsh.exe -WindowStyle Hidden -file "C:\3D_File_Mgmt_Beta\3D_File_Mgmt.ps1"

Start pwsh.exe -file "C:\3D_File_Mgmt_Beta\Update\Version_R.ps1"