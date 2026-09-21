cask "fb-3100-korg-ps-3100-emulation-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/fb3100_1_2_1_mac.pkg"
  name "FB-3100 KORG PS-3100 emulation"
  desc "FB-3100 KORG PS-3100 emulation"
  homepage "https://plugins4free.com/plugin/2831"
  depends_on :macos
  pkg "fb3100_1_2_1_mac.pkg"
end
