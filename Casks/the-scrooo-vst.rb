cask "the-scrooo-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/scrooo_2_0_2_mac.pkg"
  name "The scrooo"
  desc "The scrooo is a VST2.4 polyphonic software synthesizer ."
  homepage "https://plugins4free.com/plugin/994"
  depends_on :macos
  pkg "scrooo_2_0_2_mac.pkg"
end
