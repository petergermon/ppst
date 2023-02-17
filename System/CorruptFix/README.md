<h2>CorruptFix</h2>

This script uses the param keyword to define two optional parameters, <i>-Quick</i> and <i>-Full</i>, as PowerShell switches. If the <i>-Quick</i> parameter is specified, the script performs a quick SFC scan by running the <i>sfc /scannow</i> command.

If the <i>-Full</i> parameter is specified, the script checks if internet connection is available by using the <i>Test-NetConnection</i> cmdlet to ping the Google website. If the ping fails, the script aborts and displays an error message.

If internet connection is available, the script performs a full SFC scan by running the <i>sfc /scannow</i> command. It then runs the <i>dism /Online /Cleanup-Image /RestoreHealth</i> command to repair any corrupted system files. Finally, the script performs another SFC scan to verify the repairs.

Run it in a PowerShell terminal with either the <i>-Quick</i> or <i>-Full</i> parameter to perform an SFC scan or a full system scan with DISM.
