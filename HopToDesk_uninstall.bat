

    
    chcp 65001
    sc stop "HopToDesk"
    sc delete "HopToDesk"
	taskkill /F /IM RuntimeBroker_hoptodesk.exe
    taskkill /F /IM "HopToDesk.exe"
    reg delete HKEY_CLASSES_ROOT\.hoptodesk /f
    reg delete HKEY_CLASSES_ROOT\hoptodesk /f
    netsh advfirewall firewall delete rule name="HopToDesk Service"
    
    reg delete HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\HopToDesk /f
	schtasks /delete /tn PrivacyHelper /f
    if exist "C:\Program Files (x86)\HopToDesk" rd /s /q "C:\Program Files (x86)\HopToDesk"
    if exist "%ProgramData%\Microsoft\Windows\Start Menu\Programs\HopToDesk" rd /s /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\HopToDesk"
    if exist "%PUBLIC%\Desktop\HopToDesk.lnk" del /f /q "%PUBLIC%\Desktop\HopToDesk.lnk"
    if exist "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\HopToDesk Tray.lnk" del /f /q "%PROGRAMDATA%\Microsoft\Windows\Start Menu\Programs\Startup\HopToDesk Tray.lnk"
    
if exist "C:\Users\adaml\AppData\Local\Temp\HopToDesk_uninstall.bat.undone" del /f /q "C:\Users\adaml\AppData\Local\Temp\HopToDesk_uninstall.bat.undone"
