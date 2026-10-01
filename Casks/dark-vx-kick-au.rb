cask "dark-vx-kick-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/darkvx-kick-osx-au.zip"
  name "Dark VX Kick"
  desc "Dark VX Kick is a sampled kick drum with 4 velocity layers, some round-robins and a lot of flexibility."
  homepage "https://plugins4free.com/plugin/2210"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Dark VX Kick.component", "{{user}}/Library/Audio/Plug-Ins/Components/Dark VX Kick.component"
  end
end
