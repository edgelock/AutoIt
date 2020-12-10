#RequireAdmin

;SCCM

#comments-start

Send('{LWIN}')
ShellExecute("ccmsetup","")

#comments-end

;D:\KINGSTON\AutoItStuff\BeginnerSripts\ImageInstall\ccmsetup.bat







;Run Updates (Test it on a fresh machine)

#comments-start

WinMinimizeAll()
Send('{LWIN}')
Sleep(3000)
Send("Check for updates", 1)
Sleep(3000)
Send('{ENTER}')
Sleep(3000)
Send('{TAB}')
Sleep(3000)
Send('{TAB}')
Sleep(3000)
Send('{TAB}')
Sleep(3000)
Send('{TAB}')
Sleep(3000)
Send('{TAB}')
Sleep(3000)
Send('{ENTER}')
WinMinimizeAll()

#comments-end




;Office 365 (Done)

#comments-start

Run(@ScriptDir & '\Setup.Def.en-us_O365ProPlusRetail_04896e8c-83f3-4e5e-b833-25a4a8b0a81f_TX_PR_Platform_def_b_64_')
Sleep(40000)
WinMinimizeAll()

#comments-end




#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseUpx=y

#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#comments-start

;Malware Bytes (Done)

Run(@ScriptDir & '\MBSetup') ;ScriptDir is the directory where the script is running from. MBSetup is the name of the program you want to run
AutoItSetOption('MouseCoordMode', 0) ;AutoItSetOption tells the scrip to use Window based coordinates to prevent screen resolution from stopping proper clicking. Any mouse coordinates deal with the current window

WinWait('Malwarebytes') ;WinWait pauses the program till the program in the parenthesis is matches teh title in the window
WinActivate('Malwarebytes') ;As soon as this title is up, it's selected
MouseClick('primary', 138, 219, 1, 0) ;chooses were to click and which mouse button to use and how fast to move to the spot that needs to be clicked.

WinWait('Malwarebytes')
WinActivate('Malwarebytes')
MouseClick('primary', 270, 250, 1, 0)

WinWait('Malwarebytes')
WinActivate('Malwarebytes')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(60000)
WinClose("Malwarebytes Free  4.2.3", "")

#comments-end

;AnyConnect Install (You messed up your anyconnect version on your flashdrive. You need to figure out how to consistently prompt anyconnect to run)



ShellExecute("Setup")
AutoItSetOption('MouseCoordMode', 0)
WinWait("Cisco AnyConnect Secure Mobility Client Install Selector")
WinActivate("Cisco AnyConnect Secure Mobility Client Install Selector")
MouseClick("primary", 29, 304, 1, 0)
Sleep(1000)
MouseClick("primary", 29, 339, 1, 0)
Sleep(1000)
MouseClick("primary", 28, 93, 1, 0)
Sleep(1000)
MouseClick("primary", 27, 116, 1, 0)
Sleep(1000)
MouseClick("primary", 28, 257, 1, 0)
Sleep(1000)
MouseClick("primary", 85, 409, 1, 0)
Sleep(1000)
WinWait("Cisco AnyConnect Secure Mobility Client Install Selector", "Do you wish to install these now")
WinActivate("Cisco AnyConnect Secure Mobility Client Install Selector")
MouseClick("primary", 274, 232, 1, 0)
Send('{ENTER}')
Sleep(20000)
WinWait("Cisco AnyConnect Secure Mobility Client Install Selector", "Installation complete.")
WinActivate("Cisco AnyConnect Secure Mobility Client Install Selector")
Sleep(5000)
Send('{ENTER}')
FileCopy("C:\Users\Home\Desktop\AutoItStuff\BeginnerSripts\ImageInstall\Anyconnect\OrgInfo.json", "C:\ProgramData\Cisco\Cisco AnyConnect Secure Mobility Client\Umbrella", 1)

#comments-end





;SnagIt Works Done

#comments-start

Run(@ScriptDir & '\snagit12')
AutoItSetOption('MouseCoordMode', 0)
WinWait("Snagit 12")
WinActivate("Snagit 12")
Send('{TAB}')
Sleep(10000)
Send('{SPACE}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{ENTER}')
;This is the intallation page
Sleep(34000)
Send('{TAB}')
Sleep(10000)
Send('{ENTER}')
Sleep(5000)
WinWait("Welcome to Snagit")
WinActivate("Welcome to Snagit")
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{TAB}')
Sleep(10000)
Send('{ENTER}')
Send("NF5FM-X6H4C-CPKVC-PSYPD-D8AFE", 1)
Sleep(10000)
Send('{ENTER}')
WinMinimizeAll()


#comments-end



;Adobe Acrobat Works (Done)

#comments-start


Run(@ScriptDir & '\AcroRdrDC1902120047_en_US')
AutoItSetOption('MouseCoordMode', 0)
Sleep(50000)
WinWait("Adobe Acrobat Reader DC (Continuous) - Setup")
WinActivate("Adobe Acrobat Reader DC (Continuous) - Setup")
MouseClick("primary", 343, 372, 1, 0)
Sleep(50000)
WinWait("Adobe Acrobat Reader DC (Continuous) - Setup", "Setup Completed")
WinActivate("Adobe Acrobat Reader DC (Continuous) - Setup")
MouseClick("primary", 445, 373, 1, 0)

#comments-end


;Google Chrome (Done) Instead of "Looking for chome" switch it to look for the event of a chrome window opening or a window opening in general



Run(@ScriptDir & '\ChromeSetup')
Sleep(40000)
;WinWait("Welcome to Chrome - Google Chrome")    	;These 3 fields could be changed to "New Tab - Google Chrome". Test on a fresh machine.
;WinActivate("Welcome to Chrome - Google Chrome")
;WinClose("Welcome to Chrome - Google Chrome")
WinMinimizeAll()



;RTI Installer Works (Done) Make sure to test if RTI can run for real on a Domain machine.

;(YOU MUST RUN IT DIFFERENTLY THAN .EXE FILES.)

#comments-start

ShellExecute("RTIconnect Installer.msi")
AutoItSetOption('MouseCoordMode', 0)
Sleep(300)
WinWait("RTIconnect Setup")
WinActivate("RTIconnect Setup")
Send('{SPACE}' )
Sleep(5000)
Send('{TAB}' )
Sleep(5000)
Send('{TAB}' )
Sleep(5000)
Send('{ENTER}')
Sleep(5000)
Send('{ENTER}')
FileCopy("C:\Users\Home\Desktop\AutoItStuff\BeginnerSripts\ImageInstall\RTI Everything 2015-04-15\Launch.exe.config", "C:\Program Files (x86)\RTI\RTIconnect\NewLaunch", 1)
FileCopy("C:\Users\Home\Desktop\AutoItStuff\BeginnerSripts\ImageInstall\RTI Everything 2015-04-15\Launch.exe.config", "C:\Program Files (x86)\RTI\RTIconnect\RunLaunch", 1)

#comments-end

;Jabber (Done)

#comments-start

ShellExecute("CiscoJabberSetup.msi")
Sleep(20000) ;set at 20000 for test
Send('{ENTER}')
Sleep(30000)
Send('{ENTER}')
Sleep(20000)
WinMinimizeAll()


#comments-end









