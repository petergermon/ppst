<h2>Disk100Fix</h2>

This script is designed to fix a common issue that affects HDD's where the disk usage is constantly at 100% and causing the system to perform slowly.

By disabling BITS, SysMain and DiagTrack services, it can resolve this issue.

You can also re-enable these services by running this script again.

---------------------------

This script defines a hashtable called $services that maps the service names ("BITS", "SysMain", and "DiagTrack") to their display names. It then checks if the script is running with elevated privileges, and if not, displays a warning message and exits.

The script then loops through each service in the $services hashtable, checks its current status, and either enables or disables the service as appropriate. If a service is currently running, the script disables it by setting its startup type to "Disabled" using the Set-Service cmdlet. If a service is not running, the script enables it by setting its startup type to "Manual" and then starting it using the Set-Service and Start-Service cmdlets.

Run it in a PowerShell terminal to enable or disable the BITS, SysMain, and DiagTrack services. Note that disabling these services may have implications for system performance and diagnostics, so use this script with caution and only if you have a good reason to do so.
