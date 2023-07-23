# Reset all Windows Apps
Write-Host "Resetting Windows Apps..."
Get-AppXPackage -AllUsers | ForEach-Object {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"} 2> $null

# Restart the computer to apply changes
Write-Host "Restarting computer to apply changes..."
Restart-Computer
