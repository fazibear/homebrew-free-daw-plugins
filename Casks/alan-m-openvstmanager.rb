cask "alan-m-openvstmanager" do
  version "1.0.0"
  sha256 "25967d0cc7c1461c7c7457023a33a53a996da969d15f1bee974fd84126c9813d"
  url "https://github.com/alanmarcero/alan-m-OpenVSTManager/releases/download/v1.0.0/OpenVSTManager-1.0.0-mac-arm64.dmg"
  name "alan-m-OpenVSTManager"
  desc "Free audio plugin"
  homepage "https://github.com/alanmarcero/alan-m-OpenVSTManager"
  depends_on :macos
  container type: :dmg
  app "OpenVST Manager.app"
end
