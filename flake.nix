{
  description = "S0: can free GitHub runners run a NixOS VM test with KVM?";

  inputs.nixpkgs.url = "git+https://github.com/NixOS/nixpkgs?ref=nixos-unstable&shallow=1";

  outputs =
    { nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {
      checks.x86_64-linux.hello = pkgs.testers.runNixOSTest ./hello.nix;
    };
}
