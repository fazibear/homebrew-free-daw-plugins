cask "krystal-comp" do
  version "1.1.2"
  sha256 "853d1f55af0851af55898528b6887114b08918dcd539a34a4172d5881982a051"

  url "https://github.com/nickybanks/KrystalComp/releases/download/v#{version}/KrystalComp-v#{version}-MacOS.zip"
  name "KrystalComp"
  desc "Compressor plugin"
  homepage "https://krystaldynamics.com/plugins/krystal-comp.html"

  depends_on :macos

  artifact "KrystalComp-v#{version}-MacOS/KrystalComp.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/KrystalComp.component"
  artifact "KrystalComp-v#{version}-MacOS/KrystalComp.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/KrystalComp.vst3"
end
