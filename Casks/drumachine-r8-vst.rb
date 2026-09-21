cask "drumachine-r8-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Drumachine-R81.dmg"
  name "Drumachine R8"
  desc "Drumachine R8"
  homepage "https://plugins4free.com/plugin/1056"
  depends_on :macos
  dmg "Drumachine-R81.dmg"
end
