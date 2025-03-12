# CS2 Resolution Changer Script for Linux KDE Plasma Wayland

Many Counter-Strike players prefer custom resolutions, such as a stretched 4:3 aspect ratio. Since changing the resolution in-game on KDE Plasma Wayland doesn’t work, you’ll need to change it manually before launching the game and after exiting.

This bash script automatically switches your monitor’s resolution for Counter-Strike 2 on KDE Plasma Wayland.

## Features
- Sets a custom resolution when launching CS2
- Automatically restores the original resolution on exit
- Configurable via environment variables

## Requirements
- KDE Plasma (Wayland)
- kscreen-doctor
- Steam with Counter-Strike 2 installed

## Installation
```bash
git clone https://github.com/sk3y04/cs2-resolution-changer.git
cd cs2-resolution-script
chmod +x cs2-resolution.sh
```

## Usage
Edit the screen display and resolution settings as needed in the script.  
*(Tip: Find your monitor ID and available resolutions using `kscreen-doctor --outputs`.)*

To run the game with the script enabled, type:
```bash
./cs2-resolution.sh steam steam://rungameid/730
```
