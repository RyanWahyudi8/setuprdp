@ECHO OFF

taskkill /im ServerManager.exe /t /f

powershell -Command Start-BitsTransfer -Source https://installers.privateinternetaccess.com/download/pia-windows-x64-3.3.1-06924.exe -Destination C:\Users\%username%\Desktop
powershell -Command Start-BitsTransfer -Source https://github.com/RyanWahyudi8/setuprdp/releases/download/4.26/Pandora.v4.26.exe -Destination C:\Users\%username%\Desktop
wmic UserAccount where Name='%username%' set PasswordExpires=False
powershell -Command Install-WindowsFeature Wireless-Networking

del /s /f /q setuprdp.bat
