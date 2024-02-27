# NIFTY50 KDE Plasma Widget

This is a simple modification of the `Digital Clock` widget that displays the current price of the NIFTY50 index in the KDE taskbar. The way this works is by fetching the Google Finance page for the index every few seconds and parsing it for the required data i.e. the current price and the percentage change in price.

### Installation

Clone the repository in the directory `~/.local/share/plasma/plasmoids/` then run the command `killall plasmashell; kstart5 plasmashell` to restart `plasmashell`. Alternatively, log out and log in again.
