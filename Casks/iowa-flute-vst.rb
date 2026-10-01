cask "iowa-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Flute.vst.zip"
  name "Iowa Flute"
  desc "Iowa Flute is a sampled flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2419"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Iowa Flute.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Iowa Flute.vst"
  end
end
