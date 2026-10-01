cask "iowa-tuba-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Tuba.vst.zip"
  name "Iowa Tuba"
  desc "Iowa Tuba is a sampled tuba from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2422"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Iowa Tuba.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Iowa Tuba.vst"
  end
end
