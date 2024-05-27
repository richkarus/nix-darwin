{ pkgs, ... }: {
  programs.zsh.enable = true;
  users.users.rich.home = "/Users/rich";
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  imports = [
    ./settings/system.nix
    ./settings/homebrew.nix
    ./settings/environment.nix
  ];
}
