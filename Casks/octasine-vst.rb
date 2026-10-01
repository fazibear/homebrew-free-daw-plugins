cask "octasine-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/OctaSine-macOS-Intel.zip"
  name "OctaSine"
  desc "OctaSine is a 4 operators FM synthesizer ."
  homepage "https://plugins4free.com/plugin/3474"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "OctaSine.vst", "{{user}}/Library/Audio/Plug-Ins/VST/OctaSine.vst"
  end
end
