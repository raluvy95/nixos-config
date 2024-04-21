# Nix variant of config.jsonc

{
  general.multithreading = true;
  modules = [
    {
      type = "custom";
      format = "┌───────────────────────────────────────────┐";
    }
    "break"
    {
      type = "os";
      key = "  󱄅";
    }
    {
      type = "kernel";
      key = "  ";
      format = "{2}";
    }
    # Packages takes forever to load (and probably freeze too)
    # {
    #   type = "packages";
    #   key = "  ";
    # }
    {
      type = "shell";
      key = "  ";
    }
    {
      type = "de";
      key = "  ";
    }
    {
      type = "terminal";
      key = "  󰄛";
    }
    "break"
    {
      type = "host";
      key = "  ";
      format = "{1}";
    }
    {
      type = "uptime";
      key = "  󰥔";
    }
    {
      type = "cpu";
      key = "  ";
      format = "{1}";
    }
    {
      type = "gpu";
      key = "  󰟽";
    }
    {
      type = "memory";
      key = "  󰍛";
    }
    {
      type = "disk";
      key = "  ";
      format = "{2} ({3})";
      folders = "/";
    }
    "break"
    {
      type = "colors";
      symbol = "circle";
      paddingLeft = 16;
    }
    {
      type = "custom";
      format = "└───────────────────────────────────────────┘";
    }
  ];
  display = {
    brightColor = true;
    bar = { border = false; };
    percent = { type = 11; };
    showErrors = true;
    separator = "  ";
    color = "blue";
  };
}
