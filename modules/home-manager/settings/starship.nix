{ pkgs, ... }: {
  
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      command_timeout = 1000;
      success_symbol = "[➜ ](bright-green)";
      error_symbol = "[➜ ](red)";
      username = {
        style_user = "white";
        style_root = "white";
        format = "[$user]($style) ";
        disabled = false;
        show_always = true;
      };
      directory = {
        home_symbol = "󰋞 ~";
        read_only_style = "197";
        read_only = "  ";
        format = "at [$path]($style)[$read_only]($read_only_style) ";
        };
      git_branch = {
        symbol = " ";
        format = "via [$symbol$branch]($style) ";
        style = "bold green";
        };
      git_status = {
        format = "[\($all_status$ahead_behind\)]($style) ";
        style = "bold green";
        conflicted = "🏳";
        up_to_date = " ";
        untracked = " ";
        ahead = "⇡\${count}";
        diverged = "⇕⇡\${ahead_count}⇣\${behind_count}";
        behind = "⇣\${count}";
        stashed = " ";
        modified = " ";
        staged = "[++\($count\)](green)";
        renamed = "襁 ";
        deleted = " ";
        };
      battery = {
        full_symbol = '🔋 ';
        charging_symbol = '⚡️ ';
      };
      python = {
        symbol = '🐍 ';
        pyenv_version_name = true;
        python_binary = 'python3';
      };
      ruby = {
        symbol = '💎 ';
      };
      kubernetes = {
        disabled = false;
        symbol = '☸ ';
        format = '[ $symbol\($namespace\)]($style) ';
        style = 'purple bold';
      };
    };
  };
}
