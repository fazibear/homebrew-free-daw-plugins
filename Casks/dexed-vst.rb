cask "dexed-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Dexed_mac.zip"
  name "Dexed"
  desc "Dexed is a FM synth closely modeled on the Yamaha DX7 ."
  homepage "https://plugins4free.com/plugin/2026"
  depends_on :macos
  pkg "dexed-0.9.6.mpkg/Contents/Packages/Standalone.pkg"
end
