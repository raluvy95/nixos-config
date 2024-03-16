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

    environment.systemPackages = (with pkgs;
    [
        adw-gtk3
        krita
        libappindicator-gtk3
        libappindicator-gtk2
        git
        btop
        fastfetch
        zsh
        unstable.youtube-music
    ]) ++ (with pkgs.gnomeExtensions;
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
        x11-gestures
    ]);

    services.xserver.excludePackages = with pkgs; [
        xterm
    ];

    fonts = {
        packages = with pkgs; [
            noto-fonts-emoji
            noto-fonts-cjk
            noto-fonts
            fira-code-nerdfont
        ];
    };
}