# Reset the Winsock catalog
Write-Host "Resetting Winsock..."
netsh winsock reset

# Reset the TCP/IP stack
Write-Host "Resetting TCP/IP stack..."
netsh int ip reset

# Restart the computer to apply changes
Write-Host "Restarting computer to apply changes..."
Restart-Computer
