{ lib
, fetchurl
, appimageTools
, makeDesktopItem
}:

let
  pname = "azahar";
  version = "2121.1";
  src = fetchurl {
    url = "https://github.com/azahar-emu/azahar/releases/download/${version}/azahar.AppImage";
    sha256 = "L7/VP9WGwGy3iRQ8i3DK5JR/Ag3A1NAXhKhWjyis+LQ=";
  };
  desktopItem = makeDesktopItem {
    name = pname;
    exec = pname;
    desktopName = "Azahar Emulator";
  };

in appimageTools.wrapType2 rec {
  inherit pname version src;

  extraInstallCommands = ''
    mkdir -p $out/share/applications
    cp ${desktopItem}/share/applications/${pname}.desktop $out/share/applications/${pname}.desktop
  '';


  meta = with lib; {
    description = "An open-source 3DS emulator project based on Citra.";
    homepage = "https://azahar-emu.org/";
    license = licenses.gpl2;
    platforms = platforms.x86_64;
  };
}
