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

                initExtra = ''
                bindkey "''${key[Up]}" up-line-or-search
                bindkey "''${key[Down]}" down-line-or-search
                '';
            };
        };

       home.file = import ./config.nix;
    };

    home-manager.useGlobalPkgs = true;
}