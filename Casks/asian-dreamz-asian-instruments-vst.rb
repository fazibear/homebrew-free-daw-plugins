cask "asian-dreamz-asian-instruments-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_Asian_Dreamz_VST3_Mac.zip"
  name "Asian DreamZ Asian instruments"
  desc "Asian DreamZ Asian instruments"
  homepage "https://plugins4free.com/plugin/344"
  depends_on :macos
  artifact "DSK_Asian_Dreamz_VST3_Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
