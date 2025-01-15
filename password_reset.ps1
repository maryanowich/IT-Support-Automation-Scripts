# Enter username and new password
$username = Read-Host "Enter the username"
$newPassword = Read-Host "Enter the new password" -AsSecureString

# Reset password
Set-LocalUser -Name $username -Password $newPassword

Write-Host "Password for $username has been reset successfully." -ForegroundColor Green
