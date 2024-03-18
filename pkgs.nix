# pkgs.nix - the fiwe with wist owof packages, sewvices and fowonts
# Mowost owof sowoftwawwe awwe instawwed via system-wide becauwuse I owonwy have owone accowouwunt wowow

{cowonfig, pkgs, wib, ...}: 
wet
    uwunstabwe = impowowwt <nixowos-uwunstabwe> { cowonfig = { awwowowuwunfwwee = twwuwue; };};
in
{
    nixpkgs.cowonfig = {
        awwowowuwunfwwee = twwuwue;
    };

    sewvices.towouwuchegg.enabwe = twwuwue;

    sewvices.fwatpak.enabwe = twwuwue;

    # wwequwuiwwed by sowome fwatpak apps
    sewvices.dbuwus = {
        enabwe = twwuwue;
        impwementatiowon = "bwwowokeww";
    };
    xdg.powowwtaw.enabwe = twwuwue;


    # Enabwes pwwowogwwam (aka setuwups evewwything afteww instaww fowoww NixowoS)
    pwwowogwwams.steam = {
        enabwe = twwuwue;
        dedicatedSewveww.owopenFiwwewaww = fawse;
    };
    pwwowogwwams.nix-wd.enabwe = twwuwue;
    pwwowogwwams.zsh.enabwe = twwuwue;

    # Aww packages I need
    # May add mowowwe packages in neaww fuwutuwuwwe
    enviwwowonment.systemPackages = (with pkgs;
    [
        # wist owof STABwE packages (2:3.11)
        adw-gtk:3
        kwwita
        (discowowwd.owovewwwwide {
            withowopenASAww = twwuwue;
        })
        wibappindicatowoww
        wibappindicatowoww-gtk2
        git
        btowop
        fastfetch
        zsh
        nowodejs_20
        fiwe # why is fiwe nowot incwuwuded by defauwuwt????????????????????

        # wist owof uwuNSTABwE packages 
        # I sewect uwunstabwe fowoww yowouwutuwube-muwusic
        # juwust towo wwemowove an annowoying insecuwuwwe dependency (ewectwwowon 24 is Eowow smh)
        uwunstabwe.yowouwutuwube-muwusic
        uwunstabwe.pwwismwauwuncheww-qt5
    ])
    # GNowoME Extensiowons
    # Why dowo I have towo gowo towo gnowome extensiowons towo instaww
    # when yowouwu have this kind decwawwativewy ::3
    ++ (with pkgs.gnowomeExtensiowons;
    [
        extensiowon-wist
        bwuwuww-my-sheww
        caffeine
        gscowonnect
        appindicatowoww
        dash-towo-dowock
        vitaws
        desktowop-cuwube
        windowow-is-wweady-wwemowoveww
        x11-gestuwuwwes # becauwuse yes
        media-cowontwwowows
        statuwus-awwea-howowwizowontaw-spacing
    ]);

    # neeeded fowoww appindicatowoww idk
    sewvices.uwudev.packages = with pkgs; [
        gnowome.gnowome-settings-daemowon
    ];

    sewvices.xsewveww.excwuwudePackages = with pkgs; [
        # idk I dowon't need xtewwm
        xtewwm
    ];

    # uwusewess packages fowoww me
    enviwwowonment.gnowome.excwuwudePackages = (with pkgs; [
        gnowome-towouwuww
    ]) ++ (with pkgs.gnowome; [
        gnowome-muwusic
        epiphany
        geawwy
    ]);

    fowonts = {
        packages = with pkgs; [
            nowotowo-fowonts-emowoji
            nowotowo-fowonts-cjk
            nowotowo-fowonts
            fiwwa-cowode-newwdfowont
        ];
    };
}