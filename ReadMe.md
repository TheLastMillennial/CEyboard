# CEyboard:
## An AutoHotKey Script for the TI-84 Plus CE.
By TheLastMillennial

## Required Hardware:
 - TI-84 Plus CE or TI-83 Premium CE (Note, it is not designed for the TI-83 Premium CE key layout)
 - Mini-USB to USB cable

## Required Software:
 - AutoHotKey (Only required if you're editing the source code)
   - https://www.autohotkey.com/
 - SmartPad (Included, if you lost the file you can find it from either link below) 
   - Texas Instrument's website: https://education.ti.com/en/software/details/en/B346FFA763C147F5BCE56880CECC28E6/smartpad-ce
   - TI-Planet: https://tiplanet.org/forum/archives_voir.php?id=1138279
 - TI-Connect CE
   - https://education.ti.com/en/products/computer-software/ti-connect-ce-sw
   
## Release Installation:
1. Install TI-Connect
2. Connect your calculator to your computer
3. Send SmartPad to your calculator
4. Run CEyboard.exe

## Development Installation:
1. Install TI-Connect CE and AutoHotKey
2. Connect your calculator to your computer
3. Send SmartPad to your calculator
4. Press [apps] on the calculator and run SmartPad (make sure to press any key when it asks for it)
6. Run the CEyboard.ahk file
7. You should be set! Open a text editor and press a few calculator keys to verify things are working.

## Instructions:
Whenever you want to run the hotkey file:
1. Run CEyboard.exe
2. Connect your calculator to your computer
3. Run the SmartPad app 

If you want to quit the script:
1. Look on the taskbar for the CEyboard icon (a calculator with a red square on it), it's likely under the hidden icons tray
2. Right click the icon
3. Click 'Exit' to quit the script entirely.

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

If the above link is broken, here's the table:
|Mode 0: Numeric Input|No Modifier                       |2nd Modifier                                   |Alpha Modifier|Notes                                                  |Mode 1: Alpha Input|No Modifier    |2nd Modifier                                      |Alpha Modifier|Notes|
|:-------------------:|----------------------------------|-----------------------------------------------|--------------|-------------------------------------------------------|:-----------------:|---------------|--------------------------------------------------|--------------|-----|
|         y=          |F1                                |F6                                             |F11           |                                                       |        y=         |F1             |F6                                                |F11           |     |
|       window        |F2                                |F7                                             |F12           |                                                       |      window       |F2             |F7                                                |F12           |     |
|        zoom         |F3                                |F8                                             |F13           |                                                       |       zoom        |F3             |F8                                                |F13           |     |
|        trace        |F4                                |F9                                             |F14           |                                                       |       trace       |F4             |F9                                                |F14           |     |
|        graph        |F5                                |F10                                            |F15           |                                                       |       graph       |F5             |F10                                               |F15           |     |
|         2nd         |rAlt                              |rAlt                                           |rAlt          |                                                       |        2nd        |rAlt           |rAlt                                              |rAlt          |     |
|        mode         |Toggle Numlock                    |Esc                                            |Swaps Modes   |Triggers Sleep ([2nd]>[on] must be pressed beforehand) |       mode        |Toggle Numlock |Esc                                               |Swaps Modes   |     |
|         del         |Delete                            |Insert                                         |ctrl+delele   |                                                       |        del        |Delete         |Insert                                            |ctrl+delele   |     |
|        left         |Left                              |Shift+left                                     |ctrl+left     |                                                       |       left        |Left           |Shift+left                                        |ctrl+left     |     |
|         up          |Up                                |shift+up                                       |ctrl+up       |                                                       |        up         |Up             |shift+up                                          |ctrl+up       |     |
|        right        |Right                             |shift+right                                    |ctrl+right    |                                                       |       right       |Right          |shift+right                                       |ctrl+right    |     |
|        alpha        |rCtrl                             |                                               |              |                                                       |       alpha       |rCtrl          |                                                  |              |     |
|       X,T,0,n       |Toggle CapsLock                   |Play/Pause                                     |/             |                                                       |      X,T,0,n      |Toggle CapsLock|Play/Pause                                        |/             |     |
|        stat         |Tab                               |{}                                             |Next Song     |                                                       |       stat        |Tab            |{}                                                |Next Song     |     |
|        down         |Down                              |shift+down                                     |ctrl+down     |                                                       |       down        |Down           |shift+down                                        |ctrl+down     |     |
|        math         |Run Calculator                    |ctrl+a                                         |A             |                                                       |       math        |a              |ctrl+a                                            |A             |     |
|        apps         |Right Click menu                  |ctrl+b                                         |B             |                                                       |       apps        |b              |ctrl+b                                            |B             |     |
|        prgm         |ctrl+shift+esc (Open task manager)|ctrl+c                                         |C             |                                                       |       prgm        |c              |ctrl+c                                            |C             |     |
|        vars         |win+tab                           |Volume Up                                      |Volume Down   |                                                       |       vars        |win+tab        |Volume Up                                         |Volume Down   |     |
|        clear        |Backspace                         |Home+End+Delete (delete line)                  |ctrl+backspace|                                                       |       clear       |Backspace      |Home+End+Delete (delete line)                     |ctrl+backspace|     |
|        x^-1         |x^-1                              |[]                                             |D             |                                                       |       x^-1        |d              |ctrl+d                                            |D             |     |
|         sin         |sin()                             |sin^-1()                                       |E             |                                                       |        sin        |e              |ctrl+e                                            |E             |     |
|         cos         |cos()                             |cos^-1()                                       |F             |                                                       |        cos        |f              |ctrl+f                                            |F             |     |
|         tan         |tan()                             |tan^-1()                                       |G             |                                                       |        tan        |g              |ctrl+g                                            |G             |     |
|          ^          |^                                 |?                                              |H             |                                                       |         ^         |h              |ctrl+h                                            |H             |     |
|         x^2         |x^2                               |?()                                            |I             |                                                       |        x^2        |i              |ctrl+i                                            |I             |     |
|          ,          |,                                 |E                                              |J             |                                                       |         ,         |j              |ctrl+j                                            |J             |     |
|          (          |(                                 |{                                              |K             |                                                       |         (         |k              |ctrl+k                                            |K             |     |
|          )          |)                                 |}                                              |L             |                                                       |         )         |l              |ctrl+l                                            |L             |     |
|          ÷          |/                                 |e                                              |M             |                                                       |         ÷         |m              |ctrl+m                                            |M             |     |
|         log         |log()                             |10^()                                          |N             |                                                       |        log        |n              |ctrl+n                                            |N             |     |
|          7          |7                                 |u                                              |O             |                                                       |         7         |o              |ctrl+o                                            |O             |     |
|          8          |8                                 |v                                              |P             |                                                       |         8         |p              |ctrl+p                                            |P             |     |
|          9          |9                                 |w                                              |Q             |                                                       |         9         |q              |ctrl+q                                            |Q             |     |
|          *          |*                                 |[                                              |R             |                                                       |         *         |r              |ctrl+r                                            |R             |     |
|         ln          |ln()                              |e^()                                           |S             |                                                       |        ln         |s              |ctrl+s                                            |S             |     |
|          4          |4                                 |ctrl+t                                         |T             |                                                       |         4         |t              |ctrl+t                                            |T             |     |
|          5          |5                                 |ctrl+u                                         |U             |                                                       |         5         |u              |ctrl+u                                            |U             |     |
|          6          |6                                 |ctrl+v                                         |V             |                                                       |         6         |v              |ctrl+v                                            |V             |     |
|          -          |-                                 |]                                              |W             |                                                       |         -         |w              |ctrl+w                                            |W             |     |
|        sto->        |ctrl+c                            |ctrl+v                                         |X             |                                                       |       sto->       |x              |ctrl+x                                            |X             |     |
|          1          |1                                 |ctrl+y                                         |Y             |                                                       |         1         |y              |ctrl+y                                            |Y             |     |
|          2          |2                                 |ctrl+z                                         |Z             |                                                       |         2         |z              |ctrl+z                                            |Z             |     |
|          3          |3                                 |%                                              |?             |                                                       |         3         |?              |%                                                 |?             |     |
|          +          |+                                 |ctrl+tab                                       |"             |                                                       |         +         |"              |`                                                 |              |     |
|         on          |Pause (break)                     |Starts Sleep trigger (Press [mode] to trigger) |CtrlBreak     |                                                       |        on         |Pause (break)  |Starts Sleep trigger (Press [mode] to trigger)    |CtrlBreak     |     |
|          0          |0                                 |Help                                           |Spacebar      |                                                       |         0         |Spacebar       |ctrl+spacebar                                     |Spacebar      |     |
|          .          |.                                 |?? (Imaginary i)                               |:             |                                                       |         .         |:              |.                                                 |;             |     |
|         (-)         |-                                 |ctrl+shift+z                                   |?             |                                                       |        (-)        |?              |_                                                 |!             |     |
|        enter        |Enter                             |ctrl+enter                                     |Enter         |                                                       |       enter       |Enter          |ctrl+shift+z                                      |shift+enter   |     |
