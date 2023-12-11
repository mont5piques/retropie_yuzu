# YUZU setup for Retropie

This guide will help you to add YUZU emulator support to Retropie. It will not work on a Raspberry PI but will work fine on a X86_64 machine.

Inspired from https://github.com/raelgc/retropie_rpcs3-appImage

## Requirements

Check if you have SWITCH already listed in file `~/RetroPie-Setup/platforms.cfg`.

If not, create (or edit) file `/opt/retropie/configs/all/platforms.cfg` and add:

```
switch_exts=".nsp"
switch_fullname="Nintendo Switch"
```

## Install

After that, install the YUZU setup script with:

```bash
wget https://raw.githubusercontent.com/mont5piques/retropie_yuzu/main/yuzu-appImage.sh -O ~/RetroPie-Setup/scriptmodules/emulators/yuzu-appImage.sh
```

Now you can run **RetroPie Setup** script and `yuzu` will available under `exp` (experimental) packages section.

## Games folder

After dumping your original Switch games, copy your NSP files to `~/RetroPie/roms/switch/`.


## CEMU initial setup

Before running any Switch game from Retropie, you need to configure YUZU first. Do it by running `/opt/retropie/emulators/yuzu-appImage/bin/yuzu.AppImage`

TODO
