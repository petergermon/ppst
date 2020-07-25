# WinPWSH-Toolkit
PowerShell Scripts that can be ultilised to debug technical issues that may arise within the Windows Operating System.
<br>

----------------------------------------------------------------------------------------------------------------------
<h2><ins>Enabling PowerShell Scripts</ins></h2>
To ensure these scripts run correctly without errors, ensure PowerShell is running in an administrator session.
<br><b>Run Windows PowerShell as Administrator:</b>
<br><i>Right-click "Windows PowerShell" > "Run as Administrator".</i>
<br>
<br>
You will also need to enable execution of powershell scripts in order for these scripts to work!
<br>
<b>Enable PowerShell Scripts:</b>
<br><i>Set-ExecutionPolicy Unrestricted</i>
<br>
<br>
After running these scripts, it's a good security practice to disable execution of powershell script files.
<br>
<b>Disable PowerShell Scripts:</b>
<br><i>Set-ExecutionPolicy Restricted</i>
<br>

----------------------------------------------------------------------------------------------------------------------
<h2><ins>Included Scripts</ins></h2>
<dl>
  <dt>Networking</dt>
  <dd><b>NetworkTest</b> - Runs a test to determine network functionality, provides list of adapters, ip addresses, DNS addresses and pings the loopback, default gateway and google.</dd>
  <dd><b>RestartAdapters</b> - Restarts all adapters connected on the host system. </dd>
  <dd><b>WinsockReset</b> - Resets the Windows Sockets API protocol. </dd>
</dl>
<dl>
  <dt>System</dt>
  <dd><b>FixCorruptOS</b> - Runs SFC and DISM scans to repair potential corruptions on the system and windows image.</dd>
  <dd><b>FixWindowsApps</b> - Reinstalls all Windows Apps.</dd>
  <dd><b>FixWindowsUpdate</b> - Deletes the Windows Update cache and resets Windows Update.</dd>
</dl>
<b>Networking</b>
<table style="width:100%">
  <tr>
    <th>Script</th>
    <th>Description</th> 
  </tr>
  <tr>
    <td>NetworkTest</td>
    <td>Runs a test to determine network functionality, provides list of adapters, ip addresses, DNS addresses and pings the loopback, default gateway and google.</td>
  </tr>
