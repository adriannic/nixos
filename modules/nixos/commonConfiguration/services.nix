_: {
  services = {
    flatpak.enable = true;
    pipewire = {
      enable = true;
      extraConfig = {
        pipewire."92-low-latency".context.properties = {
          default.clock = {
            rate = 48000;
            quantum = 32;
            min-quantum = 32;
            max-quantum = 32;
          };
        };
        pipewire-pulse."92-low-latency" = {
          context.modules = [
            {
              name = "libpipewire-module-protocol-pulse";
              args.pulse = {
                min.req = "32/48000";
                default.req = "32/48000";
                max.req = "32/48000";
                min.quantum = "32/48000";
                max.quantum = "32/48000";
              };
            }
          ];
          stream.properties = {
            node.latency = "32/48000";
            resample.quality = 1;
          };
        };
      };
      alsa = {
        enable = true;
        support32Bit = true;
      };
      jack.enable = true;
      pulse.enable = true;
    };
    tlp.enable = true;
  };
}
