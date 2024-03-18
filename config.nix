# The cowonfig.nix
# This is whewe my NIXIE WIXIE vawiant of aww configuwuations lies
# Sowome configuwuations awe auto-genewated by a pwogwam
# and may nowot need towo puwut here
let
    # without this it wiww powwute in uwuseww's howome diwwectory lol 
    howomeCowonfig = ".cowonfig/";
    fastfetch = impowort ./cowonfig/fastfetch.nix;
in
{
    "${howomeCowonfig}fastfetch/cowonfig.jsowonc".text = buwuiltins.towoJSOWON fastfetch;
}