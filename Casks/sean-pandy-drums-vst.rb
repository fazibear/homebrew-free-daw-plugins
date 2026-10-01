cask "sean-pandy-drums-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/spd-osx-vst.zip"
  name "Sean Pandy Drums"
  desc "Sean Pandy Drums is a acoustic drum rompler with Kick, Snare, 4 Toms and a Sub Blower."
  homepage "https://plugins4free.com/plugin/2462"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "spd-osx-vst/Sean Pandy Drums.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "spd-osx-vst/spd-mapping.txt", "{{user}}/Library/Audio/Plug-Ins/VST/spd-mapping.txt"
  end
end
