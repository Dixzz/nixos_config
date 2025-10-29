{ pkgs, inputs, ... }:
{
  imports = [
    # ./example.nix - add your modules here
  ];

  # home-manager options go here
  home.packages = [
    # pkgs.vscode - hydenix's vscode version
    # pkgs.userPkgs.vscode - your personal nixpkgs version
    inputs.zed-flake.packages.${pkgs.system}.zed-latest
  ];

  # hydenix home-manager options go here
  hydenix.hm.enable = true;
  hydenix.hm.theme.active = "Catppuccin Latte";
  # Visit https://github.com/richen604/hydenix/blob/main/docs/options.md for more options
}
