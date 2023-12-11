#!/usr/bin/env bash

# This file is not part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are

rp_module_id="yuzu-appImage"
rp_module_desc="Nintendo Switch emulator yuzu"
rp_module_help="ROM Extensions: .nsp\n\nCopy your .nsp rom files to $romdir/switch\n\nDon't forget to setup YUZU emulator first!"
rp_module_licence="GPL2 https://raw.githubusercontent.com/yuzu/yuzu/master/LICENSE"
rp_module_section="exp"
rp_module_flags="!arm"

function install_bin_yuzu-appImage() {
    mkdir -p "$md_inst/bin"
    wget --content-disposition https://github.com/yuzu-emu/yuzu-mainline/releases/download/mainline-0-1647/yuzu-mainline-20231210-25dbeab9b.AppImage -O "$md_inst/bin/yuzu.AppImage"
    chmod +x "$md_inst/bin/yuzu.AppImage"
}

function configure_yuzu-appImage() {
    mkRomDir "switch"
    addEmulator 0 "$md_id" "switch" "$md_inst/bin/yuzu.AppImage -f -g %ROM%"
    addSystem "switch"
}
