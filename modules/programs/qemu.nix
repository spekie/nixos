{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    qemu
    OVMF
  ];
}
