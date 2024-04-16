# NIFTY50 KDE Plasma Widget

Note: This works only on Plasma 5. I am currently working on a version for Plasma 6, the latest version till date.

This is a simple modification of the `Digital Clock` widget that displays the current price of the NIFTY50 index in the KDE taskbar. The way this works is by fetching the Google Finance page for the index every few seconds and parsing it for the required data i.e. the current price and the percentage change in price. This is how it should look:

![Alt text](ss.png?raw=true "Screenshot")
 
### Installation

Clone the repository in the directory `~/.local/share/plasma/plasmoids/` then run the command `killall plasmashell; kstart5 plasmashell` to restart `plasmashell`. Alternatively, log out and log in again.
