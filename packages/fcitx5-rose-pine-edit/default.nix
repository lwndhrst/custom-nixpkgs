{ stdenvNoCC
, fetchFromGitHub
, lib
}:

stdenvNoCC.mkDerivation {
  pname = "fcitx5-rose-pine-edit";
  version = "0-unstable-2024-11-22";

  src = fetchFromGitHub {
    owner = "lwndhrst";
    repo = "fcitx5-rose-pine-edit";
    rev = "5c3322aed29b1670e8f091cabb44cfcbc01ff982";
    sha256 = "D2IGDJplYsEN1GRX0eDboCCNCuMMym81BNCSE7f/vFg=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -pv $out/share/fcitx5/themes/
    cp -rv rose-pine* $out/share/fcitx5/themes/

    runHook postInstall
  '';


  meta = {
    description = "Fcitx5 themes based on Rosé Pine";
    homepage = "https://github.com/lwndhrst/fcitx5-rose-pine-edit";
    platforms = lib.platforms.all;
  };
}
