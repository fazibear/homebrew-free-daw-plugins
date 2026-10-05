cask "triple-cheese-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TripleCheese_130_12092_Mac.zip"
  name "Triple Cheese"
  desc "Triple Cheese is a unique-sounding comb filters synthesizer ."
  homepage "https://plugins4free.com/plugin/1770"
  depends_on :macos
  pkg "TripleCheese_12092_Mac/TripleCheese 1.3.0 Installer.pkg"
end
