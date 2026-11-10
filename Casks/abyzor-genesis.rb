cask "abyzor-genesis" do
  version "2.3.2"
  sha256 "8e70457210670126fe1c9dbc63aa04c28ce2f0ffb81493122e3325ec46c498bc"
  url "https://github.com/abyzor/abyzor-genesis/releases/download/v2.3.2/ABYZOR_Genesis_v2.3.2_macOS.zip"
  name "ABYZOR Genesis"
  desc "MIDI generator plugin"
  homepage "https://abyzor.space/products/genesis/"
  depends_on :macos
  artifact "ABYZOR Genesis.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/ABYZOR Genesis.component"
  artifact "ABYZOR Genesis.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/ABYZOR Genesis.vst3"
end
