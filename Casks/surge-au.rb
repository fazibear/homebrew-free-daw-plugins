cask "surge-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Surge.dmg"
  name "Surge"
  desc "Surge is a subtractive hybrid synthesizer ."
  homepage "https://plugins4free.com/plugin/2931"
  depends_on :macos
  container type: :dmg
  pkg "Surge-1.9.0-Setup.pkg"
end
