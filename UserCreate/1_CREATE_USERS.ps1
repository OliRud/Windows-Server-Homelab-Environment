<#
.SYNOPSIS
Automates the creation of 1,000 test users in Active Directory.

.NOTES
Original script authored by: Josh Madakor
Modified by: Oliver Rudyk
Modifications: Removed hard-coded credentials, added validation,
added logging.
#>

$PASSWORD_FOR_USERS = Read-Host "Enter the password for the new users"
$USER_FIRST_LAST_LIST = Get-Content .\names.txt
$logFile = "C:\Logs\UserCreation.log"

if (-not (Test-Path "C:\Logs")) {
    New-Item -ItemType Directory -Path "C:\Logs" | Out-Null
}

$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force
New-ADOrganizationalUnit -Name _USERS -ProtectedFromAccidentalDeletion $false

foreach ($n in $USER_FIRST_LAST_LIST) {
    $first = $n.Split(" ")[0].ToLower()
    $last = $n.Split(" ")[1].ToLower()
    $username = "$($first.Substring(0,1))$($last)".ToLower()
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan

    if (Get-ADUser -Filter "SamAccountName -eq '$username'") {
        Write-Warning "User $username already exists. Skipping."
    } else {
        New-AdUser -AccountPassword $password `
               -GivenName $first `
               -Surname $last `
               -DisplayName $username `
               -Name $username `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path "ou=_USERS,$(([ADSI]`"").distinguishedName)" `
               -Enabled $true
        Add-Content -Path $logFile -Value "$(Get-Date): Created user $username"
    }
}