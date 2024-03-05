{
  pkgs,
  config,
  ...
}: let
  variant = "mocha";
in {
  programs.btop = {
    enable = true;
  }
}
