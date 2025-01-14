# Define log file
$timestamp = (Get-Date).ToString("yyyy-MM-dd_HH-mm-ss")
$logFile = "ping_log_$timestamp.txt"

# Targets to ping
$targets = @("192.168.1.1", "8.8.8.8", "www.google.com")

# Start logging
Add-Content $logFile "Network Connectivity Check - $timestamp`n"

foreach ($target in $targets) {
    Add-Content $logFile "Pinging $target..."
    Test-Connection -ComputerName $target -Count 4 | Out-String | Add-Content $logFile
}

Write-Host "Network check completed. Log saved to $logFile"
