# Personal NixOS config

![](/.github/screenshot.png)

## Installation

After following NixOS manual for new installation to generate a new `hardware-configuration.nix` and `configuration.nix` clone this repository:

```bash
git clone https://github.com/spekie/nixos.git
```

Finish editing `configuration.nix` if necessary, make sure to add a user.

Create a new directory in [hosts](/hosts) named after your hostname and move all of the files from `/etc/nixos` to that directory in the newly cloned repository.

Add your hostname in `flake.nix` and replace the text `HOSTNAME` with your hostname:

```nix
nixosConfigurations.HOSTNAME = nixpkgs.lib.nixosSystem {
  specialArgs = { inherit inputs; };
  modules = [
    ./hosts/HOSTNAME/configuration.nix
    ./modules
    home-manager.nixosModules.default
  ];
};
```

Create a new `options.nix` file in the host directory and import it from `configuration.nix`, examples: [options.nix](/hosts/nixbox/options.nix) [configuration.nix](/hosts/nixbox/configuration.nix)

Run the following command to install, replace `HOSTNAME` with your hostname:

```bash
nixos-install --flake .#HOSTNAME
```

Run the following command to add password for user, replace `USERNAME` with your username:

```bash
nixos-enter --root /mnt -c 'passwd USERNAME'
```

## After installation

After a sucessfull install copy your configuration somewhere more accessible like `$HOME/nixos` and define your flake path in `options.nix` where your configuration will reside.

Make sure to change permissions of your configuration:

```bash
sudo cp -R /etc/nixos/* $HOME
cd $HOME/nixos
sudo chown -R USERNAME:users .
```

Optionally you can delete `/etc/nixos` and symlink it to your configuration/flake path when defined in `options.nix` like this:

```bash
sudo rm -r /etc/nixos
sudo ln -s $NH_FLAKE /etc/nixos
```

## Additional things

Extra drives, hardware configuration, or any other system-level configurations can be done in `configuration.nix`
