# Home manager configuration for user

{config, pkgs, ...}:

{
    # Home manager
    # Here lies the stuff you may need here
    home-manager.users.cat = { pkgs, ... }: {
        home.packages = with pkgs; [
            vscode
        ];

        systemd.user.sessionVariables = config.home-manager.users.cat.home.sessionVariables;
        
        # never touch this
        home.stateVersion = "23.11";
        
        # yes
        dconf.settings = {
            "org/gnome/desktop/interface" = {
                color-schene = "prefer-dark";
                clock-show-seconds = true;
            };
        };

        programs = { 
            git = {
                enable = true;
                userName = "raluvy95";
                # no email for you lol
            };

            zsh = {
                enable = true;
                enableCompletion = true;
                enableAutosuggestions = true;
                syntaxHighlighting.enable = true;

                oh-my-zsh = {
                    enable = true;
                    plugins = [ "git" "thefuck" ];
                    theme = "robbyrussell";
                };

                # The default zsh for NixOS doesn't have this kind of functionality
                # So I had to add arrow-up and arrow-down for this
                initExtra = ''
                bindkey "''${key[Up]}" up-line-or-search
                bindkey "''${key[Down]}" down-line-or-search

                fortune
                '';
            };
        };

        # More configurations can be found in config.nix
        home.file = import ./config.nix;
    };

    # idk what to do
    home-manager.useGlobalPkgs = true;
}