{
  description = "Example flake for CHICKEN eggs";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = {
      url = "github:edolstra/flake-compat";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, flake-utils, ... }:

    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        eggs = with pkgs; import ./eggs.nix { inherit pkgs stdenv; };
      in rec {
        packages = flake-utils.lib.flattenTree rec {

          blog-rss-parser = with pkgs;
            eggDerivation rec {
              pname = "blog-rss-parser";
              version = "1.0.0";
              name = "${pname}-${version}";

              src = self;

              # src = fetchegg {
              #   inherit version;
              #   name = pname;
              #   sha256 = "1l5zkr6b8l5dw9p5mimbva0ncqw1sbvp3d4cywm1hqx2m03a0f1n";
              # };

              buildInputs = 
                [
                  # Dependencies from eggs.nix
                  eggs.http-client
                  openssl
                  pkg-config
                  eggs.openssl
                  eggs.atom
                ];

              meta = with lib; {
                homepage = "TODO";
                description = "TODO";
                license = licenses.gpl3;
                maintainers = [ maintainers.pinpox ];
                platforms = platforms.unix;
              };
            };

          # apps = {
          #   blog-rss-parser= flake-utils.lib.mkApp {
          #     drv = packages.blog-rss-parser;
          #     exePath = "/bin/home-assistant-grafana-relay";
          #   };
          # };
        };

        defaultPackage = packages.blog-rss-parser;
        # defaultApp = apps.blog-rss-parser;
      });
}
