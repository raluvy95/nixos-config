# The user called cat

{config, pkgs, ...}:

{
    # My user configuraton
    # simpler :3 
    users.users.cat = {
        isNormalUser = true;
        description = "cat";
        extraGroups = ["networkmanager" "wheel"];
    };

    users.defaultUserShell = pkgs.zsh;
}