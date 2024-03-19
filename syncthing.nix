{ config, pkgs, ... }:
let 
    userName = "cat";
in
{
  services.syncthing = {
    # why did you put x = x + 1 whitespaces here lol
    enable = true;
    user = "${userName}";
    dataDir = "/home/${userName}/Sync";    # Default folder for new synced folders
    overrideDevices = true;
    overrideFolders = true;
  };

  services.syncthing.settings = {
    devices = {
      # CNB devices
      "ralue proseros" = { id = "JLUFVGS-2CXOM5H-FN3GCXE-KFYD3JY-Z44ZFPW-7LXSLH6-HLRCYMJ-7HDBRAF "; };
      "ralue tefaxyn" = { id = "3QNJ7V5-3QCDPU6-UGAWXMT-MC6IKD3-KGY2MA4-QRTVMGJ-U466277-CE3KYQW"; };
      # NRD devices
      "nrde proseros" = { id: "CNM2TPL-H2W3DYZ-FUB54AT-AW464D6-U4236CO-CIL6IG4-Y4H6ZET-I67PLAF"; };
      "nrde tablet" = { id = "6IIPECD-WCB2GM6-QQBUX2O-6TJA6DJ-STNZRA2-43DEXS5-SYX3BRC-Z3HEDAD"; }; 
      "nrde panther" = { id = "DAYZPX7-7LVYBZN-Q6ZUNA2-BJ2E7ED-O6MRTCY-SHNTL6K-DKDUPKC-DQIRBQP"; };
      "nrde spes" = { id = "DRBCWGK-IEMEJUT-7UDIOKI-L43OVYB-ABUZJZW-25ITEDF-H3QM6D2-4OLNZA7"; };
    };

    folders = {
      # <3
      "anax kulup" = {
        id = "ejzvn-jtuie";
        path = "/home/${userName}/anax kulup";
        devices = [ "nrde tefaxyn" "nrde spes" "ralue tefaxyn" "ralue proseros" "nrde tablet" ];
      };
      # can't forget about ixni
      "obsidian ixni" = {
        id = "dlebo-khhal";
        path = "/home/${userName}/Documents/obsidian/ixni";
        devices = [ "nrde tefaxyn" "nrde spes" "ralue tefaxyn" "ralue proseros" "nrde tablet" ];
      };
    };
  };
}