{ vimUtils
, fetchFromGitHub
}:

vimUtils.buildVimPlugin {
  pname = "rose-pine-edit";
  version = "2025-02-26";

  src = fetchFromGitHub {
    owner = "lwndhrst";
    repo = "neovim-rose-pine-edit";
    rev = "6379d64f74f6b1fdc8e8e58bfc996b3b2b93909b";
    sha256 = "Y4HwlejJ4tXYQVk+doW9bkwOVkTBQ8B6B9EBWEcEXxo=";
  };
}
