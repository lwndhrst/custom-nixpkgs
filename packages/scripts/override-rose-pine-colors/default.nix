{ writeShellApplication }:

let
  default-colors = {
    base =           "191724";
    surface =        "1f1d2e";
    overlay =        "26233a";
    muted =          "6e6a86";
    subtle =         "908caa";
    text =           "e0def4";
    highlight-low =  "21202e";
    highlight-med =  "403d52";
    highlight-high = "524f67";
  };
  custom-colors = {
    # base =           "040e14";
    base =           "000f16";
    surface =        "0a161d";
    overlay =        "0b1e28";
    muted =          "506471";
    subtle =         "708593";
    text =           "c8d4dc";
    highlight-low =  "11181d";
    highlight-med =  "29363f";
    highlight-high = "384853";
  };

in writeShellApplication {
  name = "override-rose-pine-colors";
  text = ''
    FILE=$1

    sed -i 's/${default-colors.base}/${custom-colors.base}/g' "$FILE"
    sed -i 's/${default-colors.surface}/${custom-colors.surface}/g' "$FILE"
    sed -i 's/${default-colors.overlay}/${custom-colors.overlay}/g' "$FILE"
    sed -i 's/${default-colors.muted}/${custom-colors.muted}/g' "$FILE"
    sed -i 's/${default-colors.subtle}/${custom-colors.subtle}/g' "$FILE"
    sed -i 's/${default-colors.text}/${custom-colors.text}/g' "$FILE"
    sed -i 's/${default-colors.highlight-low}/${custom-colors.highlight-low}/g' "$FILE"
    sed -i 's/${default-colors.highlight-med}/${custom-colors.highlight-med}/g' "$FILE"
    sed -i 's/${default-colors.highlight-high}/${custom-colors.highlight-high}/g' "$FILE"
  '';
}
