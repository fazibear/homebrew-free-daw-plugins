cask "the-qyooo-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/qyooo_1_2_1_mac.pkg"
  name "The qyooo"
  desc "The qyooo is polyphonic 3 oscillators analog synthesizer ."
  homepage "https://plugins4free.com/plugin/2569"
  depends_on :macos
  pkg "qyooo_1_2_1_mac.pkg"
end
