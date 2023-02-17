# Disable and re-enable all network adapters
Get-NetAdapter | ForEach-Object {
    Write-Host "Resetting $($_.Name)..."
    Disable-NetAdapter -Name $_.Name -Confirm:$false
    Enable-NetAdapter -Name $_.Name
}

# Release and renew all IP configurations
Get-NetAdapter | ForEach-Object {
    Write-Host "Resetting IP configuration for $($_.Name)..."
    Get-NetAdapter | Where-Object {$_.Name -eq $_.Name} | Remove-NetIPAddress -Confirm:$false
    Get-NetAdapter | Where-Object {$_.Name -eq $_.Name} | Remove-NetRoute -Confirm:$false
    ipconfig /release $_.Name
    ipconfig /renew $_.Name
}
