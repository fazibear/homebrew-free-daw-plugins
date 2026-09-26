cask "exakt-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ExaktLite.pkg"
  name "Exakt Lite"
  desc "Exakt Lite is an inuitive and user friendly FM synthesizer plugin."
  homepage "https://plugins4free.com/plugin/3126"
  depends_on :macos
  pkg "ExaktLite.pkg"
end
