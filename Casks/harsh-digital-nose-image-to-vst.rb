cask "harsh-digital-nose-image-to-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/HarshDigitalNose.dmg"
  name "Harsh Digital Nose Image to"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/703"
  depends_on :macos
  dmg "HarshDigitalNose.dmg"
end
