Set-Service -Name "BITS" -StartupType Disabled
Stop-Service -Force -Name "BITS"
Set-Service -Name "SysMain" -StartupType Disabled
Stop-Service -Force -Name "SysMain"
Set-Service -Name "DiagTrack" -StartupType Disabled
Stop-Service -Force -Name "DiagTrack"
