{ pkgs, ... }: {
  
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history = {
      ignoreDups = true;
      ignoreAllDups = true;
      ignoreSpace = true;
      size = 999999;
      save = 999999;
    };

    shellAliases = {
      nixswitch = "darwin-rebuild switch --flake ~/.config/nix/.#";
      gs = "git status";
      gp = "git push";
      gc = "git commit";
      vi = "nvim";
      ls = "ls -ltrh --color=auto";
      python = "python3";
      k = "kubectl";
      tmux = "TERM=screen-256color-bce tmux";
      docker-clean = "docker rmi $(docker images -f 'dangling=true' -q)";
      proxmox = "ssh rich@10.0.10.3";
    };
    
    initExtra = ''
      export PATH="$PATH:/opt/homebrew/bin"
      export PATH="/Users/rich/go/bin/:$PATH"
      export LANG=en_US.UTF-8
      export TERM=xterm-256color
    '';

    oh-my-zsh = {
      enable = true;
      plugins = [
        "aws"
        "git"
        "docker"
        "kubectl"
        "terraform"
        "history"
        "history-substring-search"
      ];
    };
  };
}
