cask "abyzor-genesis" do
  version "2.3.1"
  sha256 "f73ef1283c583435166b85a5b36825daa4da25b8a914d45f9fed73865a8c8fb7"
  url "https://github.com/abyzor/abyzor-genesis/releases/download/v2.3.1/ABYZOR_Genesis_v2.3.1_macOS.zip"
  name "ABYZOR Genesis"
  desc "MIDI generator plugin"
  homepage "https://abyzor.space/products/genesis/"
  depends_on :macos
  artifact "ABYZOR Genesis.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/ABYZOR Genesis.component"
  artifact "ABYZOR Genesis.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/ABYZOR Genesis.vst3"
end
