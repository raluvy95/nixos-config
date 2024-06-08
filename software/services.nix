{ pkgs, ...}:
{
    dbus = {
        enable = true;
        implementation = "broker";
    };
    flatpak.enable = true;
    touchegg.enable = true;

    # needed for appindicator idk
    udev.packages = [
        pkgs.gnome.gnome-settings-daemon
    ];

    # I don't have a working printer
    printing.enable = false;

    # Configure keymap in X11
    xserver = {
        xkb.layout = "us";
        xkb.variant = "";
        excludePackages = with pkgs; [
            xterm
        ];
    };
}