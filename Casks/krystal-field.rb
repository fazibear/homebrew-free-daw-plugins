cask "krystal-field" do
  version "1.1.0"
  sha256 "dc4fb264de751e6c1892374b7dbefb0ed51ec80ee421628b41c26a1142a91e02"

  url "https://github.com/nickybanks/KrystalField/releases/download/v#{version}/KrystalField-v#{version}-MacOS.zip"
  name "KrystalField"
  desc "Multiband distortion plugin"
  homepage "https://krystaldynamics.com/plugins/krystal-field.html"

  depends_on :macos

  artifact "KrystalField-v#{version}-MacOS/KrystalField.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/KrystalField.component"
  artifact "KrystalField-v#{version}-MacOS/KrystalField.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/KrystalField.vst3"
end
