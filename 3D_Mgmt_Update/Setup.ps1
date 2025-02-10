$Error1 = $null
$Error2 = $null
$a = 0

while ($Error1 -ne -1978335189 -or $a -eq 10) {

    winget install git.git --accept-package-agreements --accept-source-agreements
    $Error1 = $LASTEXITCODE
    $a = $a + 1
}
if ($a -eq 10) {

    "There is a problem installing Git. Try relaunching or reach out to the administrator." | Out-File ~\ErrorGit.txt
    Start-Process ~\ErrorGit.txt -Wait
    rd ~\ErrorGit.txt
    exit
}

$a = 0

while ($Error2 -ne -1978335189 -or $a -eq 10) {

    winget install pwsh --accept-package-agreements --accept-source-agreements
    $Error2 = $LASTEXITCODE
    $a = $a + 1
}

if ($a -eq 10) {

    "There is a problem installing PowerShell 7. Try relaunching or reach out to the administrator." | Out-File ~\ErrorPwsh.txt
    Start-Process ~\ErrorPwsh.txt -Wait
    rd ~\ErrorPwsh.txt
    exit
}

Start-Process "C:\Versions\3D_Mgmt_Update\Rm3D.bat"