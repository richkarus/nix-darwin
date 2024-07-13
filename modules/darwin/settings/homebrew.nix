{ pkgs, ... }: {
  homebrew = {
    brewPrefix = "/opt/homebrew/bin";
    enable = true;
    caskArgs.no_quarantine = true;
    global = {
      brewfile = true;

    };
    brews = [
      "istioctl"
      "kubie"
      "kubectx"
      "docker"
      "docker-credential-helper"
      "docker-buildx"
      "watch"
      "calicoctl"
      "packer"
      "goenv"
    ];
    casks = [
      "slack"
      "zoom"
      "1password"
      "goland"
      "pycharm"
      "rectangle"
      "notion"
      "notion-calendar"
      "viscosity"
      "bruno"
      "chromium"
    ];
  };
}
