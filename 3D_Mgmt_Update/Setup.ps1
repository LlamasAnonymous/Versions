$Error1 = $null
$Error2 = $null
$a = 0

while ($Error1 -ne -1978335189 -or $a -eq 15) {

    winget install git.git --accept-package-agreements --accept-source-agreements
    $Error1 = $LASTEXITCODE
    $a = $a + 1
}
if ($a -eq 15) {

    "There is a problem installing Git. Try relaunching or reach out to the administrator." | Out-File ~\ErrorGit.txt
    Start-Process ~\ErrorGit.txt -Wait
    rd ~\ErrorGit.txt
    exit
}

$a = 0

while ($Error2 -ne -1978335189 -or $a -eq 15) {

    winget install pwsh --accept-package-agreements --accept-source-agreements
    $Error2 = $LASTEXITCODE
    $a = $a + 1
}

if ($a -eq 15) {

    "There is a problem installing PowerShell 7. Try relaunching or reach out to the administrator." | Out-File ~\ErrorPwsh.txt
    Start-Sleep 1
    Start-Process ~\ErrorPwsh.txt
    rd ~\ErrorPwsh.txt
    exit
}

rd -r "C:\3D_File_Mgmt" -Force

git clone https://github.com/LlamasAnonymous/3D_File_Mgmt.git C:\3D_File_Mgmt

Start-Process "C:\3D_File_Mgmt\Misc\Launch.bat"

Start-Process "C:\3D_File_Mgmt\Update\Version_R.ps1"