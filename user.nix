# The user called cat

{config, pkgs, ...}:

{
    users.users.cat = {
        isNormalUser = true;
        description = "cat";
        extraGroups = ["networkmanager" "wheel"];
        packages = with pkgs; [
            firefox
            telegram-desktop
            thefuck
            fira-code-nerdfont
        ];
    };

    users.defaultUserShell = pkgs.zsh;
}