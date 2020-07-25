# WinPWSH-Toolkit
Powershell Scripts 

<b>Enable Powershell Scripts:</b>
<br><i>Set-ExecutionPolicy RemoteSigned</i> : Runs scripts created on the device. However, scripts created on another computer won't run unless they include a signature of a trusted publisher.
<br>
<br><i>Set-ExecutionPolicy AllSigned</i> : All the scripts will run as long as they've been signed by a trusted publisher.
<br>
<br><i>Set-ExecutionPolicy Unrestricted</i> : Runs any script without any restrictions.

<b>Disable Powershell Scripts:</b>
<br><i>Set-ExecutionPolicy Restricted</i>
