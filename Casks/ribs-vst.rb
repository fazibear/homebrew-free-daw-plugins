cask "ribs-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Ribs_OSX-VST.zip"
  name "Ribs"
  desc "Ribs is a granular instrument / FX ."
  homepage "https://plugins4free.com/plugin/2829"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "OSX-VST/Ribs.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Ribs.vst"
  end
end
