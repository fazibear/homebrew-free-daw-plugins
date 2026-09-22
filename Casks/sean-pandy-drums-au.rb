cask "sean-pandy-drums-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/spd-osx-au.zip"
  name "Sean Pandy Drums"
  desc "Sean Pandy Drums is a acoustic drum rompler with Kick, Snare, 4 Toms and a Sub Blower."
  homepage "https://plugins4free.com/plugin/2462"
  depends_on :macos
  artifact "spd-osx-au/Sean Pandy Drums.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
