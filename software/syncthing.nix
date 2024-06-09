{ config, pkgs, ... }:
let 
    userName = "cat";
    userHome = "/home/${userName}/";
in
{
    services.syncthing = {
        enable = true;
        user = "${userName}";
        dataDir = "${userHome}Sync";    # Default folder for new synced folders
    };

    services.syncthing.settings = {
        devices = {

            # CNB devices
            "my phone" = { id = "3QNJ7V5-3QCDPU6-UGAWXMT-MC6IKD3-KGY2MA4-QRTVMGJ-U466277-CE3KYQW"; };

            # NRD devices
            "nrd pc" = { id = "CNM2TPL-H2W3DYZ-FUB54AT-AW464D6-U4236CO-CIL6IG4-Y4H6ZET-I67PLAF"; };
            "nrd tablet" = { id = "6IIPECD-WCB2GM6-QQBUX2O-6TJA6DJ-STNZRA2-43DEXS5-SYX3BRC-Z3HEDAD"; }; 
            "nrd panther" = { id = "36GHUBP-MBDDHYH-JH7D4JX-47AIA3E-KA6QJFL-XOO2DUM-H7XE33I-PE5J5QQ"; };
            "nrd spes" = { id = "DRBCWGK-IEMEJUT-7UDIOKI-L43OVYB-ABUZJZW-25ITEDF-H3QM6D2-4OLNZA7"; };
            "nrd macbook" = { id = "DTHQ6HZ-RZ76DTX-ANB2SLE-KQ6QQEO-CGHX56G-32M3MB7-3RBZ5RX-XKTZYQ5"; };
            
        };

        folders = {
            # <3
            "anax kulup" = {
                id = "ejzvn-jtuie";
                path = "${userHome}/Sync/anax kulup";
                devices = [ "nrd pc" "nrd spes" "my phone" "nrd tablet" "nrd panther"];
            };

            # can't forget about ixni
            "obsidian ixni" = {
                id = "dlebo-khhal";
                path = "${userHome}/Sync/obsidian::ixni";
                devices = [ "nrd panther" "nrd spes" "my phone" "nrd tablet" "nrd pc" ];
            };

            "obsidian kulup.mp3" = {
                id = "bytx8-6vgq8";
                path = "${userHome}/Sync/obsidian::kulupmp3";
                devices = [ "nrd panther" "nrd spes" "my phone" "nrd tablet" "nrd pc" ];
            };
        };
    };
}
