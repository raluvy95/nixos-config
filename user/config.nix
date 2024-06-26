# The config.nix
# This is where my NIX variant of all configurations lies here
# Some configurations are auto-generated by a program
# and may not need to put here
let
    # without this it will pollute in user's home directory lol 
    homeConfig = ".config/";
    fastfetch = import ./config/fastfetch.nix;
in
{
    "${homeConfig}fastfetch/config.jsonc".text = builtins.toJSON fastfetch;
    "firefox-gnome-theme" = {
        target = ".mozilla/firefox/homeconfig/chrome/firefox-gnome-theme";
        source = (fetchTarball "https://github.com/rafaelmardojai/firefox-gnome-theme/archive/master.tar.gz");
    };
}