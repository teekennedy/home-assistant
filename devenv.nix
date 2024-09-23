{pkgs, ...}: {
  env.SOPS_AGE_KEY_FILE = ~/.config/sops/age/keys.txt;

  # https://devenv.sh/packages/
  packages = [
    pkgs.age
    pkgs.sops
  ];

  enterShell = ''
  '';

  # https://devenv.sh/pre-commit-hooks/
  pre-commit.hooks = {
    # Nix code formatter
    alejandra.enable = true;
    # YAML linter
    yamllint.enable = true;
  };
}
