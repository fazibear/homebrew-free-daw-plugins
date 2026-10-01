cask "grain-strain-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/grainstrain_1_1_1_mac.pkg"
  name "Grain Strain"
  desc "Grain Strain is a envelope grain looping effect."
  homepage "https://plugins4free.com/plugin/3494"
  depends_on :macos
  pkg "grainstrain_1_1_1_mac.pkg"
end
