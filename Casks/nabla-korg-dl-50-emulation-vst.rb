cask "nabla-korg-dl-50-emulation-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/nabla_1_3_1_mac.pkg"
  name "Nabla KORG DL-50 emulation"
  desc "Nabla KORG DL-50 emulation"
  homepage "https://plugins4free.com/plugin/1868"
  depends_on :macos
  pkg "nabla_1_3_1_mac.pkg"
end
