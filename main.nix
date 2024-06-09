# The main file, editable by non-root user

{config, pkgs, lib, ...}:
{
    # imports from all other directories
    imports = [
        ./user/home-manager.nix
        ./software/themes.nix
        ./software/pkgs.nix
        ./software/syncthing.nix
        ./system/firewall.nix
        ./system/nvidia.nix
        ./system/user.nix
        ./system/flatpak-cursor-fix.nix
    ];
}