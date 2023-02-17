<h2>AdminToggle</h2>
This script first uses the <i>Get-LocalUser</i> cmdlet to retrieve the Administrator account, and then checks whether the account is enabled or not. 
<br><br>
If the account is enabled, the script uses the <i>Disable-LocalUser</i> cmdlet to disable the account. If the account is disabled, the script uses the <i>Enable-LocalUser</i> cmdlet to enable the account.
<br><br>
Run it in a PowerShell terminal to toggle the enable/disable status of the Administrator account. Note that enabling or disabling the Administrator account can have security implications, so use this script with caution and only if you have a good reason to do so.
