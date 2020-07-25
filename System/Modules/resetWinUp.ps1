net stop bits
net stop wuauserv
net stop appidsvc
net stop cryptsvc

Del "C:\Users\All Users\Application Data\Microsoft\Network\Downloader\*.*"

cmd /C "rmdir C:\Windows\SoftwareDistribution /s /q"
cmd /C "rmdir C:\Windows\system32\catroot2 /s /q"

cmd /C "sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)"
cmd /C "sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)"

cmd /C "C:\Windows\system32\regsvr32.exe /s atl.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s urlmon.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s mshtml.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s shdocvw.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s browseui.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s jscript.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s vbscript.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s scrrun.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s msxml.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s msxml3.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s msxml6.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s actxprxy.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s softpub.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wintrust.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s dssenh.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s rsaenh.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s gpkcsp.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s sccbase.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s slbcsp.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s cryptdlg.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s oleaut32.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s ole32.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s shell32.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s initpki.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wuapi.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wuaueng.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wuaueng1.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wucltui.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wups.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wups2.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wuweb.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s qmgr.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s qmgrprxy.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wucltux.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s muweb.dll"
cmd /C "C:\Windows\system32\regsvr32.exe /s wuwebv.dll"

netsh winsock reset
netsh winsock reset proxy

net start bits
net start wuauserv
net start appidsvc
net start cryptsvc

Restart-Computer
