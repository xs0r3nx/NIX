{
   programs.bash = {
      enable = true;
      shellAliases = {

         rebuilds = "sudo nixos-rebuild switch --flake ~/NIX";
         rebuildb = "sudo nixos-rebuild boot --flake ~/NIX";
         vim = "nvim";
         homes = "home-manager switch --flake ~/NIX";
       

      };


   };





}
