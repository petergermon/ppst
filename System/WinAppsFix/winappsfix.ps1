# Reset all Windows Apps
Write-Host "Resetting Windows Apps..."
Get-AppXPackage -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

# Restart the computer to apply changes
Write-Host "Restarting computer to apply changes..."
Restart-Computer
