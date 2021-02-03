# CEyboard:
An AutoHotKey Script for SmartPad on the TI-84 Plus CE.
By TheLastMillennial

This project allows you to treat your TI-84 Plus CE like an external keyboard! 
It interprets the wierd keys the official TI-SmartPad app outputs and turns them into useful key presses.

## Required Hardware:
 - TI-84 Plus CE or TI-83 Premium CE. (Note, some keys are not designed for the TI-83 Premium CE)
 - Mini-USB to USB type A cable.

## Required Software:
 - SmartPad (Included, but if you lost the file you can find it from either link below) 
   - Texas Instruments: https://education.ti.com/en/software/details/en/B346FFA763C147F5BCE56880CECC28E6/smartpad-ce
   - TI-Planet: https://tiplanet.org/forum/archives_voir.php?id=1138279
 - TI-Connect CE
   - https://education.ti.com/en/products/computer-software/ti-connect-ce-sw
   
## Installation:
1. Install TI-Connect CE.
2. Connect your calculator to your computer.
3. Send SmartPad to your calculator.
4. Refer to 'Instructions' below for how to use CEyboard.
5. Refer to 'Key Documentation' below to learn what each key does.

## Instructions:
### How to start CEyboard:
1. Run CEyboard.exe.
2. Connect your calculator to your computer.
3. Run the SmartPad app. (Found under the [apps] button)

### How to quit CEyboard:
1. Look on the taskbar for the CEyboard icon (a calculator with a red square on it), it's likely under the hidden icons tray.
2. Right click the icon.
3. Click 'Exit' to quit CEyboard entirely.

To use the modifier keys, press the modifier key then press the key you want to modify.
 - i.e. to display the imaginary _i_, press [2nd] then press [.]
 
### Modes:
There are three modes (0, 1, and 2). 
 - Press [alpha]>[mode] to step through each mode. 
 - Press [2nd]>[alpha] to cycle between mode 0 and mode 1. 
The first two modes prioritize a certain aspect of the keyboard: Numerical Input or Alphabetic input. The last mode is designed for TI-84 Plus CE emulators and therefor won't work like a normal keyboard.
 - Mode 0: Numeric Input
   - This mode prioritiezes printing numbers. It replicates the buttons and menus printed on the TI-84 Plus CE as best as possible. 
   - i.e. Pressing [log] will output "log()". Pressing [2nd]>[log] will output "10^()". Pressing [alpha]>[log] will output "N".
 - Mode 1: Alpha Input
   - This mode prioritizes printing letters. [2nd] acts as ctrl. [alpha] acts as shift.
   - i.e. Pressing [log] will output "n". Pressing [2nd]>[log] triggers ctrl+n. Pressing [alpha]>[log] will output "N".
 - Mode 2: Emulator Input
   - Disables all hotkeys so it works normally in emulators such as TI-Smartview or CEmu.

## Troubleshooting:
 - If you encounter an issue where Office opens when you press a key, you can apply a registry tweak using command prompt with admin privliges. 

  > REG ADD HKLM\Software\Classes\ms-officeapp\Shell\Open\Command /t REG_SZ /d rundll32 

  I ran this myself and experienced no negative effects. I pulled this tweak from [tenforums](https://www.tenforums.com/microsoft-office-365/154729-disable-shift-ctrl-windows-alt-opening-login-office.html).
 - If some keys aren't working properly, try turning on Numlock. You can do this by pressing [mode]. A notification will appear that says Numlock has been set to either 1 or 0.   
   - 1 means Numlock is now on.
   - 0 means Numlock is now off.

 - If you have any other problems, please create an issue on the Github page or on Cemetech!
https://www.cemetech.net/forum/viewtopic.php?t=17392

## Key Documentation
Latest, detailed documentation (Excel spreadsheet): https://1drv.ms/x/s!Al_ZukYl7Xyyzmmzj-SOTPJi2rUu?e=5c0Xoo

If the above link is broken, here's a simplified table:
|Mode 0: Numeric Input|No Modifier                       |2nd Modifier                                               |Alpha Modifier|Notes                                                         |Mode 1: Alpha Input|No Modifier    |2nd Modifier                                               |Alpha Modifier|Notes                                     |Mode 2: Emulator Input|No Modifier           |
|:-------------------:|----------------------------------|-----------------------------------------------------------|--------------|--------------------------------------------------------------|:-----------------:|---------------|-----------------------------------------------------------|--------------|------------------------------------------|:--------------------:|----------------------|
|         y=          |F1                                |F6                                                         |F11           |                                                              |        y=         |F1             |F6                                                         |F11           |                                          |          y=          |ctrl+win+F1           |
|       window        |F2                                |F7                                                         |F12           |                                                              |      window       |F2             |F7                                                         |F12           |                                          |        window        |ctrl+win+F2           |
|        zoom         |F3                                |F8                                                         |F13           |                                                              |       zoom        |F3             |F8                                                         |F13           |                                          |         zoom         |ctrl+win+F3           |
|        trace        |F4                                |F9                                                         |F14           |                                                              |       trace       |F4             |F9                                                         |F14           |                                          |        trace         |ctrl+win+T            |
|        graph        |F5                                |F10                                                        |F15           |                                                              |       graph       |F5             |F10                                                        |F15           |                                          |        graph         |ctrl+win+F5           |
|         2nd         |toggle 2nd                        |toggle 2nd                                                 |toggle 2nd    |                                                              |        2nd        |toggle 2nd     |toggle 2nd                                                 |toggle 2nd    |                                          |         2nd          |ctrl+win+F6           |
|        mode         |Toggle Numlock                    |Esc                                                        |Swaps Modes   |Completes [2nd]>[on] Sleep trigger                            |       mode        |Toggle Numlock |Esc                                                        |Swaps Modes   |Completes [2nd]>[on] Sleep trigger        |         mode         |ctrl+win+alt+F6       |
|         del         |Delete                            |Insert                                                     |ctrl+delele   |                                                              |        del        |Delete         |Insert                                                     |ctrl+delele   |                                          |         del          |ctrl+win+alt+shift+F4 |
|        left         |Left                              |Shift+left                                                 |ctrl+left     |                                                              |       left        |Left           |Shift+left                                                 |ctrl+left     |                                          |         left         |win+alt+shift+LEFT    |
|         up          |Up                                |shift+up                                                   |ctrl+up       |                                                              |        up         |Up             |shift+up                                                   |ctrl+up       |                                          |          up          |win+alt+shift+UP      |
|        right        |Right                             |shift+right                                                |ctrl+right    |                                                              |       right       |Right          |shift+right                                                |ctrl+right    |                                          |        right         |win+alt+shift+RIGHT   |
|        alpha        |toggle Alpha                      |toggle Alpha                                               |toggle Alpha  |[2nd]>[alpha] toggles between mode 0 and 1                    |       alpha       |toggle Alpha   |toggle Alpha                                               |toggle Alpha  |[2nd]>[alpha] toggles between mode 0 and 1|        alpha         |ctrl+win+F7           |
|       X,T,0,n       |Toggle CapsLock                   |Play/Pause                                                 |/             |                                                              |      X,T,0,n      |Toggle CapsLock|Play/Pause                                                 |/             |                                          |       X,T,0,n        |ctrl+win+alt+F7       |
|        stat         |Tab                               |{}                                                         |Next Song     |                                                              |       stat        |Tab            |{}                                                         |Next Song     |                                          |         stat         |ctrl+win+alt+shift+F5 |
|        down         |Down                              |shift+down                                                 |ctrl+down     |                                                              |       down        |Down           |shift+down                                                 |ctrl+down     |                                          |         down         |win+alt+shift+DOWN    |
|        math         |Run Calculator                    |ctrl+a                                                     |A             |Run calculator may only work on old operating systems         |       math        |a              |ctrl+a                                                     |A             |                                          |         math         |ctrl+win+F8           |
|        apps         |Right Click menu                  |ctrl+b                                                     |B             |                                                              |       apps        |b              |ctrl+b                                                     |B             |                                          |         apps         |ctrl+win+alt+F8       |
|        prgm         |ctrl+shift+esc (Open task manager)|ctrl+c                                                     |C             |                                                              |       prgm        |c              |ctrl+c                                                     |C             |                                          |         prgm         |ctrl+win+alt+shift+F6 |
|        vars         |win+tab                           |Volume Up                                                  |Volume Down   |                                                              |       vars        |win+tab        |Volume Up                                                  |Volume Down   |                                          |         vars         |ctrl+win+shift+F2     |
|        clear        |Backspace                         |Home+End+Delete (delete line)                              |ctrl+backspace|                                                              |       clear       |Backspace      |Home+End+Delete (delete line)                              |ctrl+backspace|                                          |        clear         |ctrl+win+shift+F9     |
|        x^-1         |x^-1                              |[]                                                         |D             |                                                              |       x^-1        |d              |ctrl+d                                                     |D             |                                          |         x^-1         |ctrl+win+F9           |
|         sin         |sin()                             |sin^-1()                                                   |E             |                                                              |        sin        |e              |ctrl+e                                                     |E             |                                          |         sin          |ctrl+win+alt+F9       |
|         cos         |cos()                             |cos^-1()                                                   |F             |                                                              |        cos        |f              |ctrl+f                                                     |F             |                                          |         cos          |ctrl+win+alt+shift+F7 |
|         tan         |tan()                             |tan^-1()                                                   |G             |                                                              |        tan        |g              |ctrl+g                                                     |G             |                                          |         tan          |ctrl+win+shift+F3     |
|          ^          |^                                 |ã                                                          |H             |                                                              |         ^         |h              |ctrl+h                                                     |H             |                                          |          ^           |ctrl+win+shift+F11    |
|         x^2         |x^2                               |û()                                                        |I             |                                                              |        x^2        |i              |ctrl+i                                                     |I             |                                          |         x^2          |ctrl+win+alt+F1       |
|          ,          |,                                 |E                                                          |J             |                                                              |         ,         |j              |ctrl+j                                                     |J             |                                          |          ,           |ctrl+win+alt+F10      |
|          (          |(                                 |{                                                          |K             |                                                              |         (         |k              |ctrl+k                                                     |K             |                                          |          (           |ctrl+win+alt+shift+F8 |
|          )          |)                                 |}                                                          |L             |                                                              |         )         |l              |ctrl+l                                                     |L             |                                          |          )           |ctrl+win+shift+F4     |
|          ö          |/                                 |e                                                          |M             |                                                              |         ö         |m              |ctrl+m                                                     |M             |                                          |          ö           |ctrl+win+/            |
|         log         |log()                             |10^()                                                      |N             |                                                              |        log        |n              |ctrl+n                                                     |N             |                                          |         log          |ctrl+win+alt+F2       |
|          7          |7                                 |u                                                          |O             |                                                              |         7         |o              |ctrl+o                                                     |O             |                                          |          7           |ctrl+win+alt+F11      |
|          8          |8                                 |v                                                          |P             |                                                              |         8         |p              |ctrl+p                                                     |P             |                                          |          8           |ctrl+win+alt+shift+F9 |
|          9          |9                                 |w                                                          |Q             |                                                              |         9         |q              |ctrl+q                                                     |Q             |                                          |          9           |ctrl+win+shift+F5     |
|          *          |*                                 |[                                                          |R             |                                                              |         *         |r              |ctrl+r                                                     |R             |                                          |          *           |ctrl+win+*            |
|         ln          |ln()                              |e^()                                                       |S             |                                                              |        ln         |s              |ctrl+s                                                     |S             |                                          |          ln          |ctrl+win+alt+F3       |
|          4          |4                                 |ctrl+t                                                     |T             |                                                              |         4         |t              |ctrl+t                                                     |T             |                                          |          4           |ctrl+win+alt+shift+F1 |
|          5          |5                                 |ctrl+u                                                     |U             |                                                              |         5         |u              |ctrl+u                                                     |U             |                                          |          5           |ctrl+win+alt+shift+F10|
|          6          |6                                 |ctrl+v                                                     |V             |                                                              |         6         |v              |ctrl+v                                                     |V             |                                          |          6           |ctrl+win+shift+F6     |
|          -          |-                                 |]                                                          |W             |                                                              |         -         |w              |ctrl+w                                                     |W             |                                          |          -           |ctrl+win+-            |
|        sto->        |ctrl+c                            |ctrl+v                                                     |X             |                                                              |       sto->       |x              |ctrl+x                                                     |X             |                                          |        sto->         |ctrl+win+alt+F4       |
|          1          |1                                 |ctrl+y                                                     |Y             |                                                              |         1         |y              |ctrl+y                                                     |Y             |                                          |          1           |ctrl+win+alt+shift+F2 |
|          2          |2                                 |ctrl+z                                                     |Z             |                                                              |         2         |z              |ctrl+z                                                     |Z             |                                          |          2           |ctrl+win+alt+shift+F11|
|          3          |3                                 |%                                                          |é             |                                                              |         3         |?              |%                                                          |é             |                                          |          3           |ctrl+win+shift+F7     |
|          +          |+                                 |ctrl+tab                                                   |"             |                                                              |         +         |"              |`                                                          |'             |                                          |          +           |ctrl+win++            |
|         on          |Pause (break)                     |Starts Sleep trigger (Press [mode] to complete the trigger)|CtrlBreak     |Sleep does not work on all computers                          |        on         |Pause (break)  |Starts Sleep trigger (Press [mode] to complete the trigger)|CtrlBreak     |Sleep does not work on all computers      |          on          |ctrl+win+alt+F5       |
|          0          |0                                 |Help                                                       |Spacebar      |Help is deprecated, likely only works on old operating systems|         0         |Spacebar       |ctrl+spacebar                                              |Spacebar      |                                          |          0           |ctrl+win+alt+shift+F3 |
|          .          |.                                 |?? (Imaginary i)                                           |:             |                                                              |         .         |:              |.                                                          |;             |                                          |          .           |ctrl+win+shift+F1     |
|         (-)         |-                                 |ctrl+shift+z                                               |?             |                                                              |        (-)        |?              |_                                                          |!             |                                          |         (-)          |ctrl+win+shift+F8     |
|        enter        |Enter                             |ctrl+enter                                                 |Enter         |                                                              |       enter       |Enter          |ctrl+shift+z                                               |shift+enter   |                                          |        enter         |enter                 |
