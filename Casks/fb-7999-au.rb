cask "fb-7999-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/fb7999_1_1_3_mac.pkg"
  name "FB-7999"
  desc "FB-7999 simulates the KORG DW-6000 and DW-8000 synthesizers from the 1980s."
  homepage "https://plugins4free.com/plugin/3560"
  depends_on :macos
  pkg "fb7999_1_1_3_mac.pkg"
end
