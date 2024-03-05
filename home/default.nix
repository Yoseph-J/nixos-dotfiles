{
  lib,
  self,
  inputs,
  ...
}: {
  imports = [
    ./terminal
  ];

  home = {
    username = "yosephj";
    homeDirectory = "/home/yosephj";
    stateVersion = "23.11";
    extraOutputsToInstall = ["doc" "devdoc"];
  };

  manual = {
    html.enable = false;
    json.enable = false;
    manpages.enable = false;
  };

  programs.home-manager.enable = true;
}
