cask "dark-vx-kick-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/darkvx-kick-osx-vst2.zip"
  name "Dark VX Kick"
  desc "Dark VX Kick is a sampled kick drum with 4 velocity layers, some round-robins and a lot of flexibility."
  homepage "https://plugins4free.com/plugin/2210"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Dark VX Kick.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Dark VX Kick.vst"
  end
end
