cask "bd-808-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Synsonic-BD-808-Installer_MacAU.zip"
  name "BD-808"
  desc "BD-808 is useful for creating 808-style bass drum sounds ."
  homepage "https://plugins4free.com/plugin/2773"
  depends_on :macos
  pkg "Synsonic-BD-808-Installer-AU-64Bit.pkg"
end
