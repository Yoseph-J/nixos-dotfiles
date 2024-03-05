{
  config,
  pkgs,
  ...
}: let
  variant = "mocha";
in {
  programs.bat = {
    enable = true;
    config = {
      pager = "less -FR"
    };
  };

  home.sessionVariables = {
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
  }
}
