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
      tf = "tofu";
      ist = "istioctl";
    };
    
    initExtra = ''
      export PYENV_ROOT="$HOME/.pyenv"
      export PATH="$PYENV_ROOT/bin:$PATH"
      eval "$(pyenv init --path)"
      eval "$(goenv init -)"
      export PATH="$PATH:/opt/homebrew/bin"
      export LANG=en_US.UTF-8
      export TERM=xterm-256color
      export PATH="$GOROOT/bin:$PATH"
      export PATH="$PATH:$GOPATH/bin"
    '';

    oh-my-zsh = {
      enable = true;
      theme = "starship";
      plugins = [
        "aws"
        "git"
        "docker"
        "golang"
	"rbenv"
	"ruby"
	"rust"
	"ssh-agent"
	"python"
	"poetry"
	"pyenv"
        "kubectl"
        "helm"
        "terraform"
        "history"
        "history-substring-search"
      ];
    };
  };
}
