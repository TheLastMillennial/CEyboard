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

To use the modifier keys, press the modifier key then press the key you want to modify within the 750ms window.
 - i.e. to display the imaginary _i_, press [2nd] then quickly press [.]
 
### Modes:
There are three modes (0 through 2). Press [alpha] then [mode] to swap modes. The first two modes prioritize a certain aspect of the keyboard: either Numerical Input or Alphabetic input. The last mode won't act like a normal keyboard since it is designed for TI-84 Plus CE emulators.
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

  I ran this myself and it has no negative effects. I found this tweak on [tenforums](https://www.tenforums.com/microsoft-office-365/154729-disable-shift-ctrl-windows-alt-opening-login-office.html).
 - If some keys aren't working properly, try turning on Numlock. You can do this by pressing [mode]. A notification will appear that says Numlock has been set to either 1 or 0.   
   - 1 means Numlock is now on.
   - 0 means Numlock is now off.

 - If you have any other problems, please create an issue on the Github page or on Cemetech!
https://www.cemetech.net/forum/viewtopic.php?t=17392

## Key Documentation
Latest, detailed documentation (Excel spreadsheet): https://1drv.ms/x/s!Al_ZukYl7Xyyzmmzj-SOTPJi2rUu?e=5c0Xoo

If the above link is broken, here's a simplified table:
|Mode 0: Numeric Input|No Modifier                       |2nd Modifier                                               |Alpha Modifier|Notes                                                         |Mode 1: Alpha Input|No Modifier    |2nd Modifier                                               |Alpha Modifier|Notes                               |
|:-------------------:|----------------------------------|-----------------------------------------------------------|--------------|--------------------------------------------------------------|:-----------------:|---------------|-----------------------------------------------------------|--------------|------------------------------------|
|         y=          |F1                                |F6                                                         |F11           |                                                              |        y=         |F1             |F6                                                         |F11           |                                    |
|       window        |F2                                |F7                                                         |F12           |                                                              |      window       |F2             |F7                                                         |F12           |                                    |
|        zoom         |F3                                |F8                                                         |F13           |                                                              |       zoom        |F3             |F8                                                         |F13           |                                    |
|        trace        |F4                                |F9                                                         |F14           |                                                              |       trace       |F4             |F9                                                         |F14           |                                    |
|        graph        |F5                                |F10                                                        |F15           |                                                              |       graph       |F5             |F10                                                        |F15           |                                    |
|         2nd         |rAlt                              |rAlt                                                       |rAlt          |                                                              |        2nd        |rAlt           |rAlt                                                       |rAlt          |                                    |
|        mode         |Toggle Numlock                    |Esc                                                        |Swaps Modes   |Completes [2nd]>[on] Sleep trigger                            |       mode        |Toggle Numlock |Esc                                                        |Swaps Modes   |Completes [2nd]>[on] Sleep trigger  |
|         del         |Delete                            |Insert                                                     |ctrl+delele   |                                                              |        del        |Delete         |Insert                                                     |ctrl+delele   |                                    |
|        left         |Left                              |Shift+left                                                 |ctrl+left     |                                                              |       left        |Left           |Shift+left                                                 |ctrl+left     |                                    |
|         up          |Up                                |shift+up                                                   |ctrl+up       |                                                              |        up         |Up             |shift+up                                                   |ctrl+up       |                                    |
|        right        |Right                             |shift+right                                                |ctrl+right    |                                                              |       right       |Right          |shift+right                                                |ctrl+right    |                                    |
|        alpha        |rCtrl                             |rCtrl                                                      |rCtrl         |                                                              |       alpha       |rCtrl          |rCtrl                                                      |rCtrl         |                                    |
|       X,T,0,n       |Toggle CapsLock                   |Play/Pause                                                 |/             |                                                              |      X,T,0,n      |Toggle CapsLock|Play/Pause                                                 |/             |                                    |
|        stat         |Tab                               |{}                                                         |Next Song     |                                                              |       stat        |Tab            |{}                                                         |Next Song     |                                    |
|        down         |Down                              |shift+down                                                 |ctrl+down     |                                                              |       down        |Down           |shift+down                                                 |ctrl+down     |                                    |
|        math         |Run Calculator                    |ctrl+a                                                     |A             |Run calculator may only work on old operating systems         |       math        |a              |ctrl+a                                                     |A             |                                    |
|        apps         |Right Click menu                  |ctrl+b                                                     |B             |                                                              |       apps        |b              |ctrl+b                                                     |B             |                                    |
|        prgm         |ctrl+shift+esc (Open task manager)|ctrl+c                                                     |C             |                                                              |       prgm        |c              |ctrl+c                                                     |C             |                                    |
|        vars         |win+tab                           |Volume Up                                                  |Volume Down   |                                                              |       vars        |win+tab        |Volume Up                                                  |Volume Down   |                                    |
|        clear        |Backspace                         |Home+End+Delete (delete line)                              |ctrl+backspace|                                                              |       clear       |Backspace      |Home+End+Delete (delete line)                              |ctrl+backspace|                                    |
|        x^-1         |x^-1                              |[]                                                         |D             |                                                              |       x^-1        |d              |ctrl+d                                                     |D             |                                    |
|         sin         |sin()                             |sin^-1()                                                   |E             |                                                              |        sin        |e              |ctrl+e                                                     |E             |                                    |
|         cos         |cos()                             |cos^-1()                                                   |F             |                                                              |        cos        |f              |ctrl+f                                                     |F             |                                    |
|         tan         |tan()                             |tan^-1()                                                   |G             |                                                              |        tan        |g              |ctrl+g                                                     |G             |                                    |
|          ^          |^                                 |ã                                                          |H             |                                                              |         ^         |h              |ctrl+h                                                     |H             |                                    |
|         x^2         |x^2                               |û()                                                        |I             |                                                              |        x^2        |i              |ctrl+i                                                     |I             |                                    |
|          ,          |,                                 |E                                                          |J             |                                                              |         ,         |j              |ctrl+j                                                     |J             |                                    |
|          (          |(                                 |{                                                          |K             |                                                              |         (         |k              |ctrl+k                                                     |K             |                                    |
|          )          |)                                 |}                                                          |L             |                                                              |         )         |l              |ctrl+l                                                     |L             |                                    |
|          /          |/                                 |e                                                          |M             |                                                              |         /         |m              |ctrl+m                                                     |M             |                                    |
|         log         |log()                             |10^()                                                      |N             |                                                              |        log        |n              |ctrl+n                                                     |N             |                                    |
|          7          |7                                 |u                                                          |O             |                                                              |         7         |o              |ctrl+o                                                     |O             |                                    |
|          8          |8                                 |v                                                          |P             |                                                              |         8         |p              |ctrl+p                                                     |P             |                                    |
|          9          |9                                 |w                                                          |Q             |                                                              |         9         |q              |ctrl+q                                                     |Q             |                                    |
|          *          |*                                 |[                                                          |R             |                                                              |         *         |r              |ctrl+r                                                     |R             |                                    |
|         ln          |ln()                              |e^()                                                       |S             |                                                              |        ln         |s              |ctrl+s                                                     |S             |                                    |
|          4          |4                                 |ctrl+t                                                     |T             |                                                              |         4         |t              |ctrl+t                                                     |T             |                                    |
|          5          |5                                 |ctrl+u                                                     |U             |                                                              |         5         |u              |ctrl+u                                                     |U             |                                    |
|          6          |6                                 |ctrl+v                                                     |V             |                                                              |         6         |v              |ctrl+v                                                     |V             |                                    |
|          -          |-                                 |]                                                          |W             |                                                              |         -         |w              |ctrl+w                                                     |W             |                                    |
|        sto->        |ctrl+c                            |ctrl+v                                                     |X             |                                                              |       sto->       |x              |ctrl+x                                                     |X             |                                    |
|          1          |1                                 |ctrl+y                                                     |Y             |                                                              |         1         |y              |ctrl+y                                                     |Y             |                                    |
|          2          |2                                 |ctrl+z                                                     |Z             |                                                              |         2         |z              |ctrl+z                                                     |Z             |                                    |
|          3          |3                                 |%                                                          |é             |                                                              |         3         |?              |%                                                          |é             |                                    |
|          +          |+                                 |ctrl+tab                                                   |"             |                                                              |         +         |"              |`                                                          |'             |                                    |
|         on          |Pause (break)                     |Starts Sleep trigger (Press [mode] to complete the trigger)|CtrlBreak     |Sleep does not work on all computers                          |        on         |Pause (break)  |Starts Sleep trigger (Press [mode] to complete the trigger)|CtrlBreak     |Sleep does not work on all computers|
|          0          |0                                 |Help                                                       |Spacebar      |Help is deprecated, likely only works on old operating systems|         0         |Spacebar       |ctrl+spacebar                                              |Spacebar      |                                    |
|          .          |.                                 |?? (Imaginary i)                                           |:             |                                                              |         .         |:              |.                                                          |;             |                                    |
|         (-)         |-                                 |ctrl+shift+z                                               |?             |                                                              |        (-)        |?              |_                                                          |!             |                                    |
|        enter        |Enter                             |ctrl+enter                                                 |Enter         |                                                              |       enter       |Enter          |ctrl+shift+z                                               |shift+enter   |                                    |
