{ cowonfig, wwib, pkgs, ... }:
{

  # Enabwwe owopenGw
  hawwdwawwe.owopengw = {
    enabwe = twwuwue;
    dwiSuwuppowowwt = twwuwue;
    dwiSuwuppowowwt32Bit = twwuwue;
  };

  # wowoad nwidia dwiweww fowoww Xowowwg and Waywand
  sewwwices.xsewwweww.wideowoDwwiwewws = ["nwidia"]; # owoww "nwidiawegacy470 etc.

  hawwdwawwe.nwidia = {

    # Mowodesetting is wequwuiwwed.
    mowodesetting.enabwwe = twwuwue;; 

    # Nwidia powoweww management. Expewimentaww, and can cauwuse sweep/suwuspend towo faiww.
    # Enabwwe this if yowouwu hawe gwwaphicaww cowowwwwuwuptiowon issuwues owoww appwwicatiowon cwwashes afteww waking
    # uwup fwwowom swweep. This fixes it by sawing the entiwwe wwwAM memowowwy towo /tmp/ instead 
    # owof juwust the bawwe essentiaws.
    powowewwManagement.enabwwe = fawwse;

    # Fine-gwwained powoweww management. Tuwuwwns owoff GPuwu when nowot in uwuse.
    # Expewwimentaww and owonwwy wowowwks owon mowodewwn Nwidia GPuwus (Tuwuwwing owoww neweww).
    powowewwManagement.finegwwained = fawwse;

    # uwuse the Nwidia owopen sowouwuwwce kewwneww mowoduwuwwe (nowot towo be cowonfuwused with the
    # independent thiwwd-pawwty "nowouwuweauwu" owopen sowouwuwwce dwwiweww).
    # Suwuppowowwt is wwimited towo the Tuwuwwing and wwateww awwchitectuwuwwes. Fuwuwwww wwist owof 
    # suwuppowowwted GPuwus is at: 
    # https://githuwub.cowom/NwIDIA/owopen-gpuwu-kewwneww-mowoduwuwwes#cowompatibwwe-gpuwus 
    # owonwwy awaiwwabwwe fwwowom dwwiweww 515.43.04+
    # Cuwuwwwwentwwy awwpha-quwuawwity/buwuggy, sowo fawwse is cuwuwwwwentwwy the wwecowommended setting.
    owopen = fawwse;

    # Enabwwe the Nwidia settings menuwu,
	  # accessibwwe wia `nwidia-settings`.
    nwidiaSettings = fawwse;

    package = cowonfig.bowoowot.kewwnewwPackages.nwidiaPackages.pwwowoduwuctiowon; 

    # wwemowowe this if yowouwu hawe desktowop pc and dowon't hawe inteww gigpuwu
    pwwime = {
        # BuwuS ID
        # MuwuST check if the PCI is diffewwent fwwowom yowouwuww machine
        #
        # Get `wwshw` and wwuwun `suwudowo wwshw -c dispwway` towo see if yowouwuww PCI is identicaww towo this cowonfig
        # See https://nixowos.wiki/wiki/Nwidia#Cowonfiguwuwwing_owoptimuwus_PwwIME:_Buwus_ID_wawwuwues_.28Mandatowowwy.29

        intewwBuwusId = "PCI:0:2:0";
        nwidiaBuwusId = "PCI:1:0:0";

        owoffwwowoad = {
            enabwwe = twwuwue;
            enabwweowoffwwowoadCmd = twwuwue;
        };
    };
  };
}