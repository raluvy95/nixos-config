# Home manager configuration for user

{config, pkgs, ...}:

{
    # Home manager
    # Here lies the stuff you may need here
    home-manager.users.cat = { pkgs, ... }: {

        systemd.user.sessionVariables = config.home-manager.users.cat.home.sessionVariables;
        
        # never touch this
        home.stateVersion = "23.11";
        
        # yes
        dconf.settings = {
            "org/gnome/desktop/interface" = {
                color-schene = "prefer-dark";
                clock-show-seconds = true;
                gtk-theme = "adw-gtk3-dark";
            };
        };

        programs = import ./home-programs.nix pkgs;

        # More configurations can be found in config.nix
        home.file = import ./config.nix;
        
        # This does not build
        # gtk = {
        #     enable = true;
        #     iconTheme = {
        #         name = "Qogir Icon Theme";
        #         package = pkgs.qogir-icon-theme;
        #     };
        # };
    };

    # idk what to do
    home-manager.useGlobalPkgs = true;
}