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

    programs = {
        steam.enable = false;

        # Enable LD for third-party installation (such as steam flatpak)
        nix-ld.enable = true;

        # ZSH shell
        zsh.enable = true;
    };
    
    services = import ./services.nix pkgs;

    xdg.portal.enable = true;


    # All packages I need
    # May add more packages in near future
    # list of STABLE packages (23.11)
    environment.systemPackages = (with pkgs;
    [
        adw-gtk3
        morewaita-icon-theme

        # libraries required to work
        libappindicator
        hunspell
        zulu8
        
        # gnome and libadwaita apps
        eyedropper
        gnome-decoder
        dialect
        cavalier

        # cli/tui apps
        btop
        git
        fastfetch
        mpv
        yt-dlp
        thefuck
        file
        zsh
        fortune-kind
        cava
        mesa-demos
        appimage-run
        ffmpeg
        bat
        kitty

        # apps
        vscode
        chromium
        nodejs_20
        firefox
        discord
        # (discord.override {
        #     withOpenASAR = true;
        # })
        krita
        libreoffice-still
        gnome.gnome-tweaks

        # games
        superTuxKart

        # Unstable apps
        # gui apps
        unstable.youtube-music
        unstable.prismlauncher

        # cli apps
        unstable.bun
        unstable.quickemu
    ])
    # GNOME Extensions
    # Why do I have to go to gnome extensions to install
    # when you have this kind declaratively :3
    ++ (with pkgs.gnomeExtensions;
    [
        alphabetical-app-grid
        extension-list
        appindicator
        clipboard-indicator
        dash-to-dock
        desktop-cube
        x11-gestures # because yes
        media-controls
        coverflow-alt-tab
        status-area-horizontal-spacing
        color-picker
        # user-themes
        just-perfection
        blur-my-shell
        burn-my-windows
        
        # Didn't update to be usable on GNOME 46 (gnome moment)
        # quick-settings-tweaker
        # top-bar-organizer
        # window-is-ready-remover
    ]);

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