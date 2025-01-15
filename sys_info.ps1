# Display basic system information
$computerName = $env:COMPUTERNAME
$osInfo = Get-WmiObject -Class Win32_OperatingSystem
$diskInfo = Get-WmiObject -Class Win32_LogicalDisk -Filter "DriveType=3"

Write-Host "Computer Name: $computerName"
Write-Host "OS: $($osInfo.Caption) $($osInfo.Version)"
Write-Host "Disk Space:"
foreach ($disk in $diskInfo) {
    $freeSpaceGB = [math]::round($disk.FreeSpace / 1GB, 2)
    $totalSpaceGB = [math]::round($disk.Size / 1GB, 2)
    Write-Host "$($disk.DeviceID): $freeSpaceGB GB free out of $totalSpaceGB GB"
}
