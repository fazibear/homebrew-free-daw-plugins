cask "abyzor-genesis" do
  version "2.1.0"
  sha256 "ca59958fae9123ceb57c193f63186870c40bdd1761563ba61a051b20009c19bf"

  url "https://github.com/abyzor/abyzor-genesis/releases/download/v#{version}/ABYZOR_Genesis_v#{version}_macOS.zip"
  name "ABYZOR Genesis"
  desc "MIDI generator plugin"
  homepage "https://abyzor.space/products/genesis/"

  depends_on :macos

  artifact "ABYZOR Genesis.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/ABYZOR Genesis.component"
  artifact "ABYZOR Genesis.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/ABYZOR Genesis.vst3"
end
