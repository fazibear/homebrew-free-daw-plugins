cask "breezy-day-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Breezy-Day_MacVST.zip"
  name "Breezy Day"
  desc "Breezy Day is a simple wind chimes rompler."
  homepage "https://plugins4free.com/plugin/3188"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Mac VST/Breezy Day.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Breezy Day.vst"
  end
end
