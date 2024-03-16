# Home manager configuration for user

{config, pkgs, ...}:

{
    home-manager.users.cat = { pkgs, ... }: {
        home.packages = with pkgs; [
            discord
            vscode
        ];

        systemd.user.sessionVariables = config.home-manager.users.cat.home.sessionVariables;
        # never touch this
        home.stateVersion = "23.11";
        
        dconf.settings = {
            "org/gnome/desktop/interface" = { color-schene = "prefer-dark"; };
        };

        gtk = {
            enable = true;
            theme = {
                name = "Adwaita-dark";
                package = pkgs.gnome.gnome-themes-extra;
            };
        };

        programs.git = {
            enable = true;
            userName = "raluvy95";
            # no email for you lol
        };
    };

    home-manager.useGlobalPkgs = true;
}