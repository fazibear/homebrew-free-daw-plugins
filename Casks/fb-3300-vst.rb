cask "fb-3300-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/fb3300_1_2_2_mac.pkg"
  name "FB-3300"
  desc "FB-3300 simulates the KORG PS-3300 polyphonic synthesizer from 1977."
  homepage "https://plugins4free.com/plugin/2859"
  depends_on :macos
  pkg "fb3300_1_2_2_mac.pkg"
end
