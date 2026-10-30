cask "spicy-guitar-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SpicyGuitar_32_64.dmg"
  name "Spicy Guitar"
  desc "Spicy Guitar is a free physically modelled acoustic guitar synthesizer."
  homepage "https://plugins4free.com/plugin/1065"
  depends_on :macos
  container type: :dmg
  pkg "Install Spicy Guitar.pkg"
end
