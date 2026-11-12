cask "alan-m-openvstmanager" do
  version "1.2.1"
  sha256 "73de2329e37a991ca793207fc67451ab5d344b2f0a062740421e725509acb094"
  url "https://github.com/alanmarcero/alan-m-OpenVSTManager/releases/download/v1.2.1/OpenVSTManager-1.2.1-mac-arm64.dmg"
  name "alan-m-OpenVSTManager"
  desc "Free audio plugin"
  homepage "https://github.com/alanmarcero/alan-m-OpenVSTManager"
  depends_on :macos
  container type: :dmg
  app "OpenVST Manager.app"
end
