cd \

taskkill /im powershell.exe /f
taskkill /im pwsh.exe /f

Timeout 1

rd "C:\Llama_Toolz\3D_File_Mgmt" /s /q

git clone https://github.com/LlamasAnonymous/3D_File_Mgmt.git C:\Llama_Toolz\3D_File_Mgmt

Start pwsh -WindowStyle Hidden "C:\Llama_Toolz\3D_File_Mgmt\3D_File_Mgmt.ps1"

Start pwsh "C:\Llama_Toolz\3D_File_Mgmt\Update\Version_R.ps1"