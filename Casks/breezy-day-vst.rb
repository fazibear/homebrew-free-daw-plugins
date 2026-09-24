cask "breezy-day-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Breezy-Day_MacVST.zip"
  name "Breezy Day"
  desc "Breezy Day is a simple wind chimes rompler."
  homepage "https://plugins4free.com/plugin/3188"
  depends_on :macos
  artifact "Mac VST/Breezy Day.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
