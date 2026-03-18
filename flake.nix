{
  description = "Golang flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in 
  {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        starship
        go
        gopls
        gotools
        just
      ];

    };
      shellHook = ''
        export PATH=$PATH:$GOPATH/bin
        eval "$(starship init bash)"
        export STARSHIP_CONFIG=$PWD/starship.toml
      '';
  };
}
