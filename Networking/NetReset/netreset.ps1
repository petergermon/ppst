# Disable and re-enable all network adapters
Get-NetAdapter | ForEach-Object {
    Write-Host "Resetting $($_.Name)..."
    Disable-NetAdapter -Name $_.Name -Confirm:$false
    Enable-NetAdapter -Name $_.Name
}

# Wait for network adapters to come back online
Write-Host "Waiting for network adapters to come back online..."
$timeout = 60
$elapsed = 0
$networkOnline = $false
while ($elapsed -lt $timeout) {
    Start-Sleep -Seconds 10
    $elapsed += 10
    if (Test-Connection -ComputerName google.com -Count 1 -Quiet) {
        $networkOnline = $true
        break
    }
}
if (-not $networkOnline) {
    Write-Error "Network adapters failed to come back online in time."
    exit 1
}

# Release and renew all IP configurations
Get-NetAdapter | ForEach-Object {
    Write-Host "Resetting IP configuration for $($_.Name)..."
    ipconfig /release $_.Name
    ipconfig /renew $_.Name
}
