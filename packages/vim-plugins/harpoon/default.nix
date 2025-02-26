{ vimUtils
, fetchFromGitHub
}:

vimUtils.buildVimPlugin {
  pname = "harpoon";
  version = "2023-10-19";

  src = fetchFromGitHub {
    owner = "ThePrimeagen";
    repo = "harpoon";
    rev = "c1aebbad9e3d13f20bedb8f2ce8b3a94e39e424a";
    sha256 = "pSnFx5fg1llNlpTCV4hoo3Pf1KWnAJDRVSe+88N4HXM=";
  };

  meta.homepage = "https://github.com/ThePrimagen/harpoon";
}

