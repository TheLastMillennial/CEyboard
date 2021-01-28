# AutoHotKey script for the TI-84 Plus CE.
By TheLastMillennial

## Required Hardware:
 - TI-84 Plus CE (Tested) or TI-83 Premium CE (Untested)
 - Mini-USB to USB cable

## Required Software:
 - AutoHotKey 
   - https://www.autohotkey.com/
 - SmartPad (Included, if you lost the file you can find it from either link below) 
   - Texas Instrument's website: https://education.ti.com/en/software/details/en/B346FFA763C147F5BCE56880CECC28E6/smartpad-ce
   - TI-Planet: https://tiplanet.org/forum/archives_voir.php?id=1138279

## Troubleshooting:
If you encounter an issue where Office opens when you press a key, you can apply a registry tweak using command prompt with admin privliges.
REG ADD HKLM\Software\Classes\ms-officeapp\Shell\Open\Command /t REG_SZ /d rundll32
I ran this myself and it has no negative effects. I found this tweak here: https://www.tenforums.com/microsoft-office-365/154729-disable-shift-ctrl-windows-alt-opening-login-office.html

If you have any other problems, please create an issue on the Github page or on Cemetech!
https://www.cemetech.net/forum/viewtopic.php?t=17392
