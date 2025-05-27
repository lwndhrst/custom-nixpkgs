{ lib
, fetchurl
, appimageTools
}:

appimageTools.wrapType2 rec {
  pname = "azahar";
  version = "2121.1";

  src = fetchurl {
    url = "https://github.com/azahar-emu/azahar/releases/download/${version}/azahar.AppImage";
    sha256 = "L7/VP9WGwGy3iRQ8i3DK5JR/Ag3A1NAXhKhWjyis+LQ=";
  };

  extraInstallCommands = ''
    substituteInPlace $out/share/applications/${pname}.desktop \
      --replace-fail 'Exec=AppRun' 'Exec=${meta.mainProgram}'
  '';

  meta = with lib; {
    description = "An open-source 3DS emulator project based on Citra.";
    homepage = "https://azahar-emu.org/";
    license = licenses.gpl2;
    platforms = platforms.x86_64;
  };
}
