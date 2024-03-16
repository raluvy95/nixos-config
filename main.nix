# The main file, editable by non-root user

{config, pkgs, lib, ...}:
{

    imports = [
        ./user.nix
        ./home-manager.nix
        ./themes.nix
        ./pkgs.nix
        ./firewall.nix
        ./nvidia.nix
    ];

    programs.zsh.enable = true;
}