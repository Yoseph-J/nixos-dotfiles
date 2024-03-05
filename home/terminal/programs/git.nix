{
  config,
  pkgs,
  ...
}: {
  home.packages = [pkgs.gh];

  home.sessionVariables.DELTA_PAGER = "less -R";

  programs.git = {
    enable = true;

    delta = {
      enable = true;
    };

    aliases = {
      a = "add";
      s = "status --short";
    };

    ignores = ["*~" "*.swp" "result" ".direnv"];

    extraConfig.gpg.format = "ssh";

    userEmail = "yoseph.jeong@outlook.com";
    userName = "Yoseph Jeong";
  };
}
