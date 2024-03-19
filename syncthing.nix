{ config, pkgs, ... }:
let 
    userName = "cat";
in
{
  # syncthing 
  
  services.syncthing = {
        enable = true;
        user = "${userName}";
        dataDir = "/home/${userName}/Sync";    # Default folder for new synced folders
        overrideDevices = true;
        overrideFolders = true;
  };

# Due to privacy reasons I will not publish this
# maybe idk
#   services.syncthing.settings = {
#     devices = {
#     };

#     folders = {
#     };
#   };
}