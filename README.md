# PowerShell-Technician-Toolkit
PowerShell Scripts that can be ultilised to debug technical issues that may arise within the Windows Operating System.
<br>

----------------------------------------------------------------------------------------------------------------------
<h2 align="center"><ins>Enabling/Disabling PowerShell Script Execution</ins></h2>
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
<h2 align="center"><ins>Included PowerShell Scripts</ins></h2>
<h3>Data</h3>
<table style="width:100%">
  <tr>
    <th>Script</th>
    <th>Description</th> 
  </tr>
  <tr>
    <td>BackupUserData</td>
    <td>Backs up the user data at "C:\Users" to a specified backup location defined by the user.</td>
  </tr>
 </table>
<br>
<h3>Networking</h3>
<table style="width:100%">
  <tr>
    <th>Script</th>
    <th>Description</th> 
  </tr>
  <tr>
    <td>NetworkTest</td>
    <td>Runs a test to determine network functionality, provides list of network adapters, IP addresses, DNS addresses and pings the loopback, default gateway and google.</td>
  </tr>
    <tr>
    <td>RestartAdapters</td>
    <td>Restarts all network adapters connected on the host system.</td>
  </tr>
    <tr>
    <td>WinsockReset</td>
    <td>Resets the Windows Sockets API protocol.</td>
  </tr>
</table>
<br>
<h3>System</h3>
<table style="width:100%">
    <tr>
    <th>Script</th>
    <th>Description</th> 
  </tr>
  <tr>
    <td>AdministratorAccountDisable</td>
    <td>Disables the local administrator account.</td>
  </tr>
  <tr>
    <td>AdministratorAccountEnable</td>
    <td>Enables the local administrator account.</td>
  </tr>
  <tr>
    <td>FixCorruptOS</td>
    <td>Runs SFC and DISM scans to repair corruptions on the system and Windows image <br><b>(Internet Connection Required)</b>.</td>
  </tr>
    <tr>
    <td>FixCorruptOS_Quick</td>
    <td>Runs an SFC scan to repair corruptions on the system.</td>
  </tr>
    <tr>
    <td>FixWindowsApps</td>
    <td>Reinstalls all Windows Apps.<br><b>(Auto Restarts Computer)</b></td>
  </tr>
    <tr>
    <td>FixWindowsUpdate</td>
    <td>Deletes the Windows Update cache and resets Windows Update.<br><b>(Auto Restarts Computer)</b></td>
  </tr>
 </table>
