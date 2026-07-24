# My NixOS config

![](/.github/screenshot.png)

# Installation

On a new NixOS installation, clone this repository:

```bash
nix-shell -p git --command 'git clone https://github.com/spekie/nixos.git'
```

## Configure

Create a new directory in [hosts](/hosts) named after your hostname and add your `configuration.nix` and `hardware-configuration.nix` there.

Also create a new [options.nix](/hosts/nixbox/options.nix) file in the host directory and import it from [configuration.nix](/hosts/nixbox/configuration.nix)

Add your hostname in [flake.nix](/flake.nix) replace the text `HOSTNAME` with your hostname:

```nix
nixosConfigurations.HOSTNAME = nixpkgs.lib.nixosSystem {
  specialArgs = { inherit inputs; };
  modules = [
    ./hosts/HOSTNAME/configuration.nix
    home-manager.nixosModules.default
  ];
};
```

## Finalise 

Rebuild using the flake and reboot the system.

Extra drives, hardware configuration additions, or any other system-level configurations should be done in `configuration.nix`
