let
    fastfetch = import ./config/fastfetch.nix;
in
{
    "fastfetch/config.jsonc".text = builtins.toJSON fastfetch;
}