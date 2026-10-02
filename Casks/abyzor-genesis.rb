cask "abyzor-genesis" do
  version "2.2.0"
  sha256 "b30abe4b1bf37ca35ae8680dfd63ff110f236ee05ac209786cbf187b01eb39c5"
  url "https://github.com/abyzor/abyzor-genesis/releases/download/v2.2.0/ABYZOR_Genesis_v2.2.0_macOS.zip"
  name "ABYZOR Genesis"
  desc "MIDI generator plugin"
  homepage "https://abyzor.space/products/genesis/"
  depends_on :macos
  artifact "ABYZOR Genesis.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/ABYZOR Genesis.component"
  artifact "ABYZOR Genesis.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/ABYZOR Genesis.vst3"
end
