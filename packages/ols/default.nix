{ lib
, pkgs
, fetchFromGitHub
, stdenvNoCC
}:

let
  packages = import ../../packages { inherit pkgs; };

in stdenvNoCC.mkDerivation rec {
  pname = "ols";
  # Using a git commit hash for now, since ols does not have proper release tags currently
  version = "2b0dccaa496fd809e36e7d979995e843bca28bfb";
  # version = "nightly";
  dontConfigure = true;

  src = fetchFromGitHub {
    owner = "DanielGavin";
    repo = "ols";
    rev = "${version}";
    sha256 = "DWcQinFqSomDQyxAi60x9mXVT2JzrQJUi9qisVOlueo=";
  };

  buildInputs = [ packages.odin ];

  postPatch = ''
    patchShebangs build.sh
  '';

  buildPhase = ''
    ./build.sh
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp ols $out/bin
  '';

  meta = with lib; {
    description = "Language server for Odin";
    homepage = "https://github.com/DanielGavin/ols";
    license = licenses.mit;
    platforms = platforms.x86_64;
  };
}
