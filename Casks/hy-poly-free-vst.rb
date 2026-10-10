cask "hy-poly-free-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/HY-POLY%20free.pkg.zip"
  name "HY-POLY Free"
  desc "HY-POLY Free is a subtractive polyphonic synthesizer ."
  homepage "https://plugins4free.com/plugin/3150"
  depends_on :macos
  pkg "HY-POLY free.pkg"
end
