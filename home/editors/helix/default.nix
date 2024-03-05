{
  inputs,
  pkgs,
  config,
  ...
}: {
  imports = [./languages.nix];

  programs.helix = {
    enable = true;

    settings = {
      theme = "catppppuccin_mocha";

      editor = {
        color-modes = true;
        cursorline = true;
        indent-guides.render = true;
        true-color = true;
      };
    };
  };
}
