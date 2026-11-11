cask "alan-m-openvstmanager" do
  version "1.1.0"
  sha256 "59633ac51967f224e2e714df2d7129da4a0aa763cd3191a6cbf9e0d6e836c986"
  url "https://github.com/alanmarcero/alan-m-OpenVSTManager/releases/download/v1.1.0/OpenVSTManager-1.1.0-mac-arm64.dmg"
  name "alan-m-OpenVSTManager"
  desc "Free audio plugin"
  homepage "https://github.com/alanmarcero/alan-m-OpenVSTManager"
  depends_on :macos
  container type: :dmg
  app "OpenVST Manager.app"
end
