{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    mpv
  ];

  hm.programs.mpv = {
    enable = true;

    config = {
      profile = "high-quality";
    };

    bindings = {
      "l" = "seek 5";
      "h" = "seek -5";
      "j" = "seek -60";
      "k" = "seek 60";
      "S" = "cycle sub";
    };
  };
}
