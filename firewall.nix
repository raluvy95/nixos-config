{config, pkgs, ...}:

{
    networking.firewall = {
        enable = true;
        # for kde connect service
        allowedTCPPortRanges = [
            {
                from = 1716;
                to = 1764;
            }
        ];
        allowedUDPPortRanges = [
            {
                from = 1716;
                to = 1764;
            }
        ];
    };
}