cask "abyzor-genesis" do
  version "2.3.0"
  sha256 "b4e6a3d163081a148a919be2609b075a36ed567be9552032873b265c0a297791"
  url "https://github.com/abyzor/abyzor-genesis/releases/download/v2.3.0/ABYZOR_Genesis_v2.3.0_macOS.zip"
  name "ABYZOR Genesis"
  desc "MIDI generator plugin"
  homepage "https://abyzor.space/products/genesis/"
  depends_on :macos
  artifact "ABYZOR Genesis.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/ABYZOR Genesis.component"
  artifact "ABYZOR Genesis.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/ABYZOR Genesis.vst3"
end
