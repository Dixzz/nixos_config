{
  description = "Local Zed flake wrapper";

  inputs = {
    zed.url = "github:zed-industries/zed?ref=v0.192.5-pre";
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { self, nixpkgs, zed, ... }@inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system}.zed-latest = zed.packages.${system}.default;
  };
}
