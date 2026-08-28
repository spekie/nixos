{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    (retroarch.withCores (cores: with cores; [
      np2kai
    ]))
  ];
}
