cask "fb-3200-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/fb3200_1_1_1_mac.pkg"
  name "FB-3200"
  desc "FB-3200 simulates the KORG PS-3200 polyphonic synthesizer from 1978."
  homepage "https://plugins4free.com/plugin/2868"
  depends_on :macos
  pkg "fb3200_1_1_1_mac.pkg"
end
