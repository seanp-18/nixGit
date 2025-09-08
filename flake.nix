{
        inputs = {
                nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
        };


        outputs = inputs: {
                nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
                        modules = [./configuration.nix ./hardware-configuration.nix];
                        system = "x86_64-linux";
                };



        };
}
