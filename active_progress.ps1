# Display all active processes
Get-Process | Select-Object Name, Id, @{Name="CPU Usage"; Expression={$_.CPU}}, @{Name="Memory Usage (MB)"; Expression={[math]::round($_.WorkingSet / 1MB, 2)}} | Format-Table -AutoSize
