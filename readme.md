I no longer keep this repo maintained since I switched to different distro. NixOS is great but it's very annoying when you have to deal with FHS enviornment. I may return back in the future. Not sure when.

# CatNowBlue's NixOS configuration

NixOS vanilla plus home manager config, including NVIDIA proprietary driver plus OPTIMUS Prime functionality.

This configuration is for my laptop: ASUS TUF Gaming F15 (exact model: FX506HE)

Similar model may work, but you need to modify the BUS code. (can be found in `system/nvidia.nix`)

This isn't really a complete configuration, only modifies the configuration generated from NixOS GNOME (version 23.11)

You can import `main.nix` in your `configuration.nix`.<br>
If the error occurs, make sure some values are not duplicated in your existing `configuration.nix`
