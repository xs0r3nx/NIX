{ config, pkgs, inputs, ... } : {
    home = {
        username = "s0r3n";
	homeDirectory = "/home/s0r3n";
	stateVersion = "24.05";

      };
      fonts.fontconfig.enable = true;
      home.packages = [
      (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
      ];
    imports = [
     ./conf/bash.nix
     ./conf/nixvim.nix
     ./conf/hyprland/hyprland.nix
     ./conf/waybar/waybar.nix
     ./conf/ranger.nix
     ./conf/gtk.nix
     ./conf/kitty/kitty.nix
     ./conf/mako/mako.nix
     ./conf/Wallpapers/wallpaper.nix
    ];


}
