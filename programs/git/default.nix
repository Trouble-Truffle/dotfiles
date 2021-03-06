{pkgs, ...}: 
{
  programs.git = {
    enable = true;
    extraConfig = {
      init.defaultBranch = "main";
    };

    userName = (pkgs.lib.trivial.importJSON ../../profile.json).git_name;
    userEmail = (pkgs.lib.trivial.importJSON ../../profile.json).git_email;
    ignores = [
     "*.hie.yaml"
    ];
  };
}
