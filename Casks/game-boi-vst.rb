cask "game-boi-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/GameBoi_MAC.zip"
  name "Game Boi"
  desc "Game Boi is retro game rompler inspired by the iconic Game Boy and Nintendo 64."
  homepage "https://plugins4free.com/plugin/3961"
  depends_on :macos
  pkg "MAC_GameBoi_Installer_v1.1.1.pkg"
end
