<h2>NetReset</h2>
This script first disables and re-enables all network adapters by using the Get-NetAdapter cmdlet to retrieve a list of all network adapters and then using Disable-NetAdapter and Enable-NetAdapter to disable and re-enable each adapter in turn.

<br>Next, it releases and renews all IP configurations by using the Get-NetAdapter cmdlet again to retrieve a list of all network adapters and then using Remove-NetIPAddress and Remove-NetRoute to remove any existing IP addresses and routes for each adapter, followed by the ipconfig /release and ipconfig /renew commands to release and renew the IP address for each adapter.

Run it in a PowerShell terminal to reset all network adapters. Note that resetting network adapters may interrupt any ongoing network connections and may cause temporary loss of connectivity.
