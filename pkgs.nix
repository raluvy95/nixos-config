# pkgs.nix - the file with list of packages, services and fonts
# Most of software are installed via system-wide because I only have one account lol

{config, pkgs, lib, ...}: 
let
    unstable = import <nixos-unstable> { config = { allowUnfree = true; };};
in
{
    nixpkgs.config = {
        allowUnfree = true;
    };

    services.touchegg.enable = true;

    services.flatpak.enable = true;

    # required by some flatpak apps
    services.dbus = {
        enable = true;
        implementation = "broker";
    };
    xdg.portal.enable = true;


    # Enables program (aka setups everything after install for NixOS)
    programs.steam = {
        enable = true;
        dedicatedServer.openFirewall = false;
    };
    programs.nix-ld.enable = true;
    programs.zsh.enable = true;

    # All packages I need
    # May add more packages in near future
    environment.systemPackages = (with pkgs;
    [
        # list of STABLE packages (23.11)
        adw-gtk3
        krita
        (discord.override {
            withOpenASAR = true;
        })
        libappindicator
        libappindicator-gtk2
        git
        btop
        fastfetch
        zsh
        file # why is file not included by default????????????????????

        # list of UNSTABLE packages 
        # I select unstable for youtube-music
        # just to remove an annoying insecure dependency (electron 24 is EOL smh)
        unstable.youtube-music
    ])
    # GNOME Extensions
    # Why do I have to go to gnome extensions to install
    # when you have this kind declaratively :3
    ++ (with pkgs.gnomeExtensions;
    [
        extension-list
        blur-my-shell
        caffeine
        gsconnect
        appindicator
        dash-to-dock
        vitals
        desktop-cube
        window-is-ready-remover
        x11-gestures # because yes
        media-controls
        status-area-horizontal-spacing
    ]);

    # neeeded for appindicator idk
    services.udev.packages = with pkgs; [
        gnome.gnome-settings-daemon
    ];

    services.xserver.excludePackages = with pkgs; [
        # idk I don't need xterm
        xterm
    ];

    # Useless packages for me
    environment.gnome.excludePackages = (with pkgs; [
        gnome-tour
    ]) ++ (with pkgs.gnome; [
        gnome-music
        epiphany
        geary
    ]);

    fonts = {
        packages = with pkgs; [
            noto-fonts-emoji
            noto-fonts-cjk
            noto-fonts
            fira-code-nerdfont
        ];
    };
}