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
      "my phone" = { id = "3QNJ7V5-3QCDPU6-UGAWXMT-MC6IKD3-KGY2MA4-QRTVMGJ-U466277-CE3KYQW"; };
      # NRD devices
      "nrd pc" = { id = "EVXBMLZ-V4KV35Z-ODXJ2VM-EZWYC3N-FYE7CX5-4MDNA7C-XDY2C7I-75TPYQ2"; };
      "nrd tablet" = { id = "6IIPECD-WCB2GM6-QQBUX2O-6TJA6DJ-STNZRA2-43DEXS5-SYX3BRC-Z3HEDAD"; }; 
      "nrd panther" = { id = "DAYZPX7-7LVYBZN-Q6ZUNA2-BJ2E7ED-O6MRTCY-SHNTL6K-DKDUPKC-DQIRBQP"; };
      "nrd spes" = { id = "DRBCWGK-IEMEJUT-7UDIOKI-L43OVYB-ABUZJZW-25ITEDF-H3QM6D2-4OLNZA7"; };
    };

    folders = {
      # <3
      "anax kulup" = {
        id = "ejzvn-jtuie";
        path = "/home/${userName}/Sync/anax kulup";
        devices = [ "nrd pc" "nrd spes" "my phone" "nrd tablet" "nrd panther"];
      };
      # can't forget about ixni
      "obsidian ixni" = {
        id = "dlebo-khhal";
        path = "/home/${userName}/Sync/obsidian::ixni";
        devices = [ "nrd panther" "nrd spes" "my phone" "nrd tablet" "nrd pc" ];
      };
    };
  };
}
