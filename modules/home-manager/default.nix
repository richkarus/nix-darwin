{ pkgs, ... }: {
  imports = [
    ./settings/zsh.nix
    ./settings/tmux.nix
    ./settings/starship.nix
    #./settings/neovim.nix // TODO: add neovim setup, check file for acceptable criteria
  ];

  home = {
    username = "rich";
    homeDirectory = "/Users/rich";
    packages = with pkgs; [
      ripgrep
      neovim
      kubectl
      kubernetes-helm
      curl
      less
      awscli
      coreutils
      neovim
      pyenv
      rbenv
      asciinema
      rustup
      jq
      tree
      tree-sitter
      vim
      wget
      bandwhich
      bat
      bottom
      eza
      git
      htop
      nerdfonts
      colima
      tmux
      tree
      gnupg
      opentofu
      git-credential-1password
      hugo
    ];

    sessionVariables = {
      PAGER = "less";
      CLICOLOR = 1;
      EDITOR = "nvim";
    };
  };

  programs = {
    starship = {
      enable = true;
      enableZshIntegration = true;
    };

    git.enable = true;
  };

  home.stateVersion = "23.11";
}
