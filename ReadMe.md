# AutoHotKey script for the TI-84 Plus CE.
By TheLastMillennial

## Required Hardware:
 - TI-84 Plus CE or TI-83 Premium CE (Note, it is not designed for the TI-83 Premium CE key layout)
 - Mini-USB to USB cable

## Required Software:
 - AutoHotKey 
   - https://www.autohotkey.com/
 - SmartPad (Included, if you lost the file you can find it from either link below) 
   - Texas Instrument's website: https://education.ti.com/en/software/details/en/B346FFA763C147F5BCE56880CECC28E6/smartpad-ce
   - TI-Planet: https://tiplanet.org/forum/archives_voir.php?id=1138279
 - TI-Connect CE
   - https://education.ti.com/en/products/computer-software/ti-connect-ce-sw
   
## Installation:
1. Install TI-Connect CE and AutoHotKey
2. Connect your calculator to your computer
3. Send SmartPad to your calculator
4. Press [apps] on the calculator and run SmartPad (make sure to press any key when it asks for it)
6. Run the TI-84 Plus CE.ahk file
7. You should be set! Open a text editor and press a few calculator keys to verify things are working.

## Instructions:
Whenever you want to run the hotkey file:
1. Run TI-84 Plus CE.ahk
2. Connect your calculator to your computer
3. Run the SmartPad app 

To use the modifier keys, press the modifier key then press the key you want to modify within the 750ms window.
 - i.e. to display the imaginary i, press [2nd] then quickly press [.] 
### Modes:
 - Mode 0: Numeric Input
   - Displaying numbers is this modes priority. It replicates the buttons and menus printed on the TI-84 Plus CE as best as possible. 
   - i.e. Pressing [log] will output "log()". Pressing [2nd]>[log] will output "10^()". Pressing [alpha]>[log] will output "N".
 - Mode 1: Alpha Input
   - This mode prioritizes printing letters. [2nd] acts as ctrl. [alpha] acts as shift.
   - i.e. Pressing [log] will output "n". Pressing [2nd]>[log] triggers ctrl+n. Pressing [alpha]>[log] will output "N".
 - Mode 2: Emulator Input
   - Disables all hotkeys so it works normally in emulators such as TI-Smartview or CEmu

## Troubleshooting:
If you encounter an issue where Office opens when you press a key, you can apply a registry tweak using command prompt with admin privliges.
REG ADD HKLM\Software\Classes\ms-officeapp\Shell\Open\Command /t REG_SZ /d rundll32
I ran this myself and it has no negative effects. I found this tweak here: https://www.tenforums.com/microsoft-office-365/154729-disable-shift-ctrl-windows-alt-opening-login-office.html

If you have any other problems, please create an issue on the Github page or on Cemetech!
https://www.cemetech.net/forum/viewtopic.php?t=17392

## Key Documentation
https://1drv.ms/x/s!Al_ZukYl7Xyyzmmzj-SOTPJi2rUu?e=5c0Xoo


