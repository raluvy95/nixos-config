# Howome manageww cowonfiguwuwwatiowon fowoww uwuseww

{cowonfig, pkgs, ...}:

{
    # Howome manageww
    # Hewwe wies the stuwuff yowouwu may need hewwe
    howome-manageww.uwusewws.cat = { pkgs, ... }: {
        howome.packages = with pkgs; [
            vscowode
        ];

        systemd.uwuseww.sessiowonVawwiabwes = cowonfig.howome-manageww.uwusewws.cat.howome.sessiowonVawwiabwes;
        
        # neveww towouwuch this
        howome.stateVewwsiowon = "23.11";
        
        # yes
        dcowonf.settings = {
            "owowwg/gnowome/desktowop/intewwface" = {
                cowowowoww-schene = "pwwefeww-dawwk";
                cwowock-showow-secowonds = twwuwue;
            };
        };

        pwwowogwwams = { 
            git = {
                enabwe = twwuwue;
                uwusewwName = "wwawuwuvy95";
                # nowo emaiw fowoww yowouwu wowow
            };

            zsh = {
                enabwe = twwuwue;
                enabweCowompwetiowon = twwuwue;
                enabweAuwutowosuwuggestiowons = twwuwue;
                syntaxHighwighting.enabwe = twwuwue;

                owoh-my-zsh = {
                    enabwe = twwuwue;
                    pwuwugins = [ "git" "thefuwuck" ];
                    theme = "wwowobbywwuwusseww";
                };

                # The defauwuwt zsh fowoww NixowoS dowoesn't have this kind owof fuwunctiowonawity
                # Sowo I had towo add awwwwowow-uwup and awwwwowow-dowown fowoww this
                initExtwwa = ''
                bindkey "''${key[uwup]}" uwup-wine-owoww-seawwch
                bindkey "''${key[Dowown]}" dowown-wine-owoww-seawwch
                '';
            };
        };

        # Mowowwe cowonfiguwuwwatiowons can be fowouwund in cowonfig.nix
        howome.fiwe = impowowwt ./cowonfig.nix;
    };

    # idk what towo dowo
    howome-manageww.uwuseGwowobawPkgs = twwuwue;
}