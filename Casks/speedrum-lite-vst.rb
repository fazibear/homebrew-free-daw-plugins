cask "speedrum-lite-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Speedrum-lite-osx.zip"
  name "Speedrum lite"
  desc "Speedrum lite is a percussion sampler plugin."
  homepage "https://plugins4free.com/plugin/3173"
  depends_on :macos
  pkg "SpeedrumLite.pkg"
end
