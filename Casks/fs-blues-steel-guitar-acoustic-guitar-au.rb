cask "fs-blues-steel-guitar-acoustic-guitar-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/FS_Blues_Steel_Guitar.component.zip"
  name "FS Blues Steel Guitar Acoustic guitar"
  desc "FS Blues Steel Guitar Acoustic guitar"
  homepage "https://plugins4free.com/plugin/2333"
  depends_on :macos
  artifact "FS_Blues_Steel_Guitar.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
