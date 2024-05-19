{pkgs, ...}:

{
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

    firefox = {
        enable = true;
        profiles.homeconfig = {
            name = "Default managed by home-manager";
            settings = {
                "extensions.activeThemeID" = "firefox-compact-dark@mozilla.org";

                "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
                "browser.tabs.drawInTitlebar" = true;
                "svg.context-properties.content.enabled" = true;
                "mozilla.widget.use-argb-visuals" = true;

                "gnomeTheme.hideSingleTab" = true;
                "gnomeTheme.normalWidthTabs" = true;
                "gnomeTheme.hideWebrtcIndicator" = true;
            };
            userChrome = ''
            @import "firefox-gnome-theme/userChrome.css";
            @import "firefox-gnome-theme/theme/colors/dark.css";
            '';
        };
    };
}