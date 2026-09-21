cask "awesome-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Awesome-Piano_MacVST.zip"
  name "Awesome Piano"
  desc "Awesome Piano is a sample based dissonant piano ."
  homepage "https://plugins4free.com/plugin/2927"
  depends_on :macos
  artifact "Awesome-Piano_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
