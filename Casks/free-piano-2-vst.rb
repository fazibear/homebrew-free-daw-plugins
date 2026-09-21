cask "free-piano-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/RDGAudio-FreePiano2_MacVST.zip"
  name "Free Piano 2"
  desc "Free Piano 2 is a sample based hybrid piano / string instrument."
  homepage "https://plugins4free.com/plugin/3229"
  depends_on :macos
  artifact "RDGAudio-FreePiano2_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
