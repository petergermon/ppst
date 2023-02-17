# <h1 align="center">PowerShell Technician's Toolkit (PSTT)</h1>
PowerShell Technician's Toolkit (PSTT) is a repository of PowerShell Scripts that can be ultilised to debug/fix technical issues that may arise within the Windows Operating System.
<br>

<i>The best solution to fix all Windows problems is to remove Windows and use Linux instead.</i> ~Peter Germon.

----------------------------------------------------------------------------------------------------------------------
<h2 align="center"><ins>Disclaimer</ins></h2>


This repository of PowerShell scripts is provided as-is. 


No warranty is provided with any of these scripts and you are responsible if you execute or modify these scripts. 


If you break your own or anyone elses system using any of these scripts, that is not my responsibility. 


Use at your own discretion.

----------------------------------------------------------------------------------------------------------------------
<h2 align="center"><ins>Enabling/Disabling PowerShell Script Execution</ins></h2>
To ensure these scripts run correctly without errors, ensure PowerShell is running in an administrator session.
<br><b>Run Windows PowerShell as Administrator:</b>
<br><i>Right-click "Windows PowerShell" > "Run as Administrator".</i>
<br>
<br>
You will also need to enable execution of powershell scripts in order for these scripts to work.
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
    <th>Usage/Parameters</th>
    <th>Will it reboot my system automatically?</th>
  </tr>
  <tr>
    <td>AutoBackup</td>
    <td>Automatically backup data allowing you to define the source and destination.</td>
    <td>.\autobackup.ps1 -Source <i>"C:\Users\Peter"</i> -Destination <i>"D:\Backups"</i> </td>
    <td>No</td>
  </tr>
    <tr>
    <td>ZeroOut</td>
    <td>Zero out deleted data on your selected disk drive.</td>
    <td>.\zeroout.ps1 -Drive <i>"C:"</i></td>
    <td>No</td>
  </tr>
 </table>
<br>
<h3>Networking</h3>
<table style="width:100%">
  <tr>
    <th>Script</th>
    <th>Description</th>
    <th>Usage/Parameters</th>
    <th>Will it reboot my system automatically?</th>
  </tr>
  <tr>
    <td>NetReset</td>
    <td>Restarts all network adapters connected on the host system.</td>
    <td>.\netreset.ps1</td>
    <td>No</td>
  </tr>
    <tr>
    <td>TestConnect</td>
    <td>Runs a test to determine network functionality, provides list of network adapters, IP addresses, DNS addresses and pings the loopback, default gateway and google.</td>
    <td>.\testconnect.ps1</td>
    <td>No</td>
  </tr>
    <tr>
    <td>WinsockReset</td>
    <td>Resets the Windows Sockets API protocol.</td>
    <td>.\winsockreset.ps1</td>
    <td>Yes</td>
  </tr>
</table>
<br>
<h3>System</h3>
<table style="width:100%">
    <tr>
    <th>Script</th>
    <th>Description</th>
    <th>Usage/Parameters</th>
    <th>Will it reboot my system automatically?</th> 
  </tr>
  <tr>
    <td>AdminToggle</td>
    <td>Enables/Disables the local administrator account.</td>
    <td>.\admintoggle.ps1</td>
    <td>No</td>
  </tr>
  <tr>
    <td>CorruptFix</td>
    <td>Performs either a single SFC scan to repair corruptions on the system, or SFC and DISM scans to repair corruptions on the system and Windows image. <br><b>(Internet Connection Required for -Full)</b></td>
    <td>.\corruptfix.ps1 -Quick | -Full</td>
    <td>No</td>
  </tr>
  <tr>
    <td>Disk100Fix</td>
    <td>Fixes a common issue that affects HDD's where the disk usage is constantly at 100% causing the system to perform slowly by disabling BITS, SysMain and DiagTrack services.</td>
    <td>.\disk100fix.ps1</td>
    <td>No</td>
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
