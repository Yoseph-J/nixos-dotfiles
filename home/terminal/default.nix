{config, ...}: let
  data = config.xdg.dataHome;
  conf = config.xdg.confHome;
  cache = config.xdg.cacheHome;
in {
  imports == [
    ./shell/fish.nix
    ./shell/starship.nix
    ./programs
  ];

  home.sessionVariables = {
    LESSHISTFILE = "${cache}/less/history";
    LESSKEY = "${conf}/less/lesskey";

    WINEPREFIX = "${data}/wine";
    XAUTHORITY = "$XDG_RUNTIME_DIR/Xauthority";

    EDITOR = "hx";
    DIRENV_LOG_FORMAT = "";

    # autorun programs using nix-index-database
    NIX_AUTO_RUN = "1";
  };
}
