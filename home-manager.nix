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

                shellAliases = {
                    yt-music = "yt-dlp -x --audio-format mp3 --embed-metadata --embed-thumbnail";
                    nixos-update = "sudo nixos-rebuild switch";
                    nixos-test = "sudo nixos-rebuild test";
                };

                oh-my-zsh = {
                    enable = true;
                    plugins = [ "git" "thefuck" ];
                };

                # powerlevel10k setup
                # After updating your nixos with this setup, you will have p10k configuration upon new shell session
                # Of course I included ~/.p10k.zsh when the file exists
                plugins = [
                    {
                        name = "powerlevel10k";
                        src = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/";
                        file = "powerlevel10k.zsh-theme";
                    }
                ];

                # The default zsh for NixOS doesn't have this kind of functionality
                # So I had to add arrow-up and arrow-down for this
                initExtra = ''
                bindkey "''${key[Up]}" up-line-or-search
                bindkey "''${key[Down]}" down-line-or-search

                fortune

                test -e ~/.p10k.zsh && source ~/.p10k.zsh
                '';
            };
        };

        # More configurations can be found in config.nix
        home.file = import ./config.nix;
    };

    # idk what to do
    home-manager.useGlobalPkgs = true;
}