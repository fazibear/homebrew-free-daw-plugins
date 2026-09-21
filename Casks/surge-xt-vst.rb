cask "surge-xt-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/surge-xt-macOS-1.1.1.dmg"
  name "Surge XT"
  desc "Surge XT is a subtractive hybrid synthesizer ."
  homepage "https://plugins4free.com/plugin/3680"
  depends_on :macos
  dmg "surge-xt-macOS-1.1.1.dmg"
end
