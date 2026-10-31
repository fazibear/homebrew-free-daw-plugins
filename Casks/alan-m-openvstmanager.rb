cask "alan-m-openvstmanager" do
  version "0.1.0"
  sha256 "c1caf4d72800adc1500a03826f8bc4de56d286f99cff8bcf62ebc52166ddc1f2"
  url "https://github.com/alanmarcero/alan-m-OpenVSTManager/releases/download/v0.1.0/OpenVSTManager-0.1.0-mac-arm64.dmg"
  name "alan-m-OpenVSTManager"
  desc "Free audio plugin"
  homepage "https://github.com/alanmarcero/alan-m-OpenVSTManager"
  depends_on :macos
  container type: :dmg
  app "OpenVST Manager.app"
end
