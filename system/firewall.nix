{config, pkgs, ...}:
# Firewall configuration
# Better than configuring via iptables and such
{
    networking.firewall = {
        enable = true;
        # kde connect service is broken so im going to disable it
        # # for kde connect service
        # allowedTCPPortRanges = [
        #     {
        #         from = 1716;
        #         to = 1764;
        #     }
        # ];
        # allowedUDPPortRanges = [
        #     {
        #         from = 1716;
        #         to = 1764;
        #     }
        # ];
    };
}