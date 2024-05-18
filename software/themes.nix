{config, pkgs, ...}:
{ 
    # Still better than having to deal with qt5ct
    qt = {
        enable = true;
        platformTheme = "gnome";
        style = "adwaita-dark";
    };
}