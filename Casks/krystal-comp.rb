cask "krystal-comp" do
  version "1.1.2"
  sha256 "853d1f55af0851af55898528b6887114b08918dcd539a34a4172d5881982a051"
  url "https://github.com/nickybanks/KrystalComp/releases/download/v1.1.2/KrystalComp-v1.1.2-MacOS.zip"
  name "KrystalComp"
  desc "Compressor plugin"
  homepage "https://krystaldynamics.com/plugins/krystal-comp.html"
  depends_on :macos
  pkg "KrystalComp-v1.1.2-MacOS/KrystalComp-v1.1.2-MacOS-installer.pkg"
end
