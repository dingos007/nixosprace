{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "dingo";
  home.homeDirectory = "/home/dingo";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
     pkgs.unrar-free
     pkgs.ffmpeg_6-full
     pkgs.nfs-utils
     pkgs.hello
     pkgs.hello
     pkgs.wget
     pkgs.kdePackages.kate
     pkgs.htop
     pkgs.lftp
     pkgs.nsnake
     pkgs.ne
     pkgs.freecad
     pkgs.lua
     pkgs.fish
     pkgs.abiword
     pkgs.gnumeric
     pkgs.rclone
     pkgs.tmate
     pkgs.mc
   # pkgs.google-chrome
     pkgs.vlc
     pkgs.mplayer
     pkgs.kmplayer
     pkgs.kdePackages.partitionmanager
     pkgs.curl
     pkgs.tree
     pkgs.neofetch
     pkgs.elinks
     pkgs.git-cola
     pkgs.lynx
     pkgs.nnn
     pkgs.btop
     pkgs.iftop
     pkgs.iotop
     pkgs.iftop
     pkgs.kitty
     pkgs.wofi
     pkgs.pamixer	


	

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # o
  #
  #  /etc/profiles/per-user/dingo/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };
  
programs.micro = {
    enable = true;
    settings = {
      colorscheme = "material-tc";
      mkparents = true;
      softwrap = true;
      tabmovement = true;
      tabsize = 2;
      tabstospaces = true;
      autosu = true;
    };
  };

programs.git = {
    enable = true;
    userName  = "Petr Dio";
    userEmail = "dingos@seznam.cz";
  };  	





  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}


