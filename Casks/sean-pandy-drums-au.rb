cask "sean-pandy-drums-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/spd-osx-au.zip"
  name "Sean Pandy Drums"
  desc "Sean Pandy Drums is a acoustic drum rompler with Kick, Snare, 4 Toms and a Sub Blower."
  homepage "https://plugins4free.com/plugin/2462"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "spd-osx-au/Sean Pandy Drums.component", "{{user}}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "spd-osx-au/spd-mapping.txt", "{{user}}/Library/Audio/Plug-Ins/Components/spd-mapping.txt"
  end
end
