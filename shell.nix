{pkgs ? import ./nixpkgs.nix { }, ghc ? pkgs.haskell.compiler.ghc8107}:

with pkgs;

haskell.lib.buildStackProject {
  name = "HaskellR";
  inherit ghc;
  buildInputs =
    [ 
      z3
      zlib
    ];
  LANG = "en_US.UTF-8";
}
