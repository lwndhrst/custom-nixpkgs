{ vimUtils
, fetchFromGitHub
}:

vimUtils.buildVimPlugin {
  pname = "ranger-nvim";
  version = "2023-06-29";

  src = fetchFromGitHub {
    owner = "kelly-lin";
    repo = "ranger.nvim";
    rev = "49045499d3933ec929675c4e886ab1da9eeca438";
    sha256 = "ulRNGYJGi9EEGKPF9yHQggFurZuGWDCPyqeneYnysu0=";
  };

  meta.homepage = "https://github.com/kelly-lin/ranger.nvim";
}
