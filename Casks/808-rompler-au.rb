cask "808-rompler-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/808-ROMpler_Installer_MacOS.dmg"
  name "808-ROMpler"
  desc "808-ROMpler is a simple and straight-forward bass drum sampler / rompler ."
  homepage "https://plugins4free.com/plugin/3553"
  depends_on :macos
  container type: :dmg
  pkg "Rompler_1.4.pkg"
end
