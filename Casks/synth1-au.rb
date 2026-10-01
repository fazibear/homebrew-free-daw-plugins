cask "synth1-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Synth1macau113beta11.zip"
  name "Synth1"
  desc "Synth1 is modelled on the Clavia Nord Lead 2 Red Synth."
  homepage "https://plugins4free.com/plugin/245"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Synth1.component", "{{user}}/Library/Audio/Plug-Ins/Components/Synth1.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components/__MACOSX/Synth1.component/Contents/Resources"
    copy "__MACOSX/Synth1.component/Contents/Resources/._s1_07.png", "{{user}}/Library/Audio/Plug-Ins/Components/__MACOSX/Synth1.component/Contents/Resources/._s1_07.png"
  end
end
