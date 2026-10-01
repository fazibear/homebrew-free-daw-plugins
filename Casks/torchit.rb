cask "torchit" do
  version "1.1.0"
  sha256 "7b42523a948fb2a60c30245519781e3fa23be5297310dd028b5dcba3664081e3"
  url "https://github.com/remiblaze/Torchit/releases/download/v1.1.0/Torchit_Installer.pkg"
  name "Torchit"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Torchit"
  depends_on :macos
  pkg "Torchit_Installer.pkg"
end
