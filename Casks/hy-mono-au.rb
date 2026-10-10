cask "hy-mono-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/HY-Mono.pkg.zip"
  name "HY-Mono"
  desc "HY-Mono is a monophonic synthesizer mainly referred to the structure of Oberheim SEM ."
  homepage "https://plugins4free.com/plugin/2523"
  depends_on :macos
  pkg "HY-Mono.pkg"
end
