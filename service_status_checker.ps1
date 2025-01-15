# List of services to check
$services = @("wuauserv", "spooler", "bits")

foreach ($service in $services) {
    $status = Get-Service -Name $service
    if ($status.Status -eq "Running") {
        Write-Host "$service is running." -ForegroundColor Green
    } else {
        Write-Host "$service is stopped. Attempting to start..." -ForegroundColor Red
        Start-Service -Name $service
        Write-Host "$service has been started." -ForegroundColor Yellow
    }
}
