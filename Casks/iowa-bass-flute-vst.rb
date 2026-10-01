cask "iowa-bass-flute-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Bass_Flute.vst.zip"
  name "Iowa Bass Flute"
  desc "Iowa Bass Flute is a sampled bass flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2418"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Iowa Bass Flute.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Iowa Bass Flute.vst"
  end
end
