{ pkgs, ... }: {
  
  system = {
    defaults = {
      NSGlobalDomain = {

        AppleInterfaceStyle = "Dark";
        AppleShowAllExtensions = true;
        
        # Hide the top menu bar
        _HIHideMenuBar = false;

      };

      dock = {
        autohide = true;
        orientation = "bottom";
        show-recents = false;
      };

      finder = {
        AppleShowAllExtensions = true;
        _FXShowPosixPathInTitle = true;
      };
    };
  };

  services.nix-daemon.enable = true;
  system.stateVersion = 4;
}
