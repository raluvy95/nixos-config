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

    xserver.excludePackages = with pkgs; [
        # I don't need xterm
        xterm
    ];
}