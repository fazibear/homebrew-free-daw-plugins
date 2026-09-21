cask "ticky-clav-2-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/2getheraudio-Ticky-Clav-2-Mac.zip"
  name "Ticky Clav 2"
  desc "Ticky Clav 2 is an emulation of a Hohner Clavinet ."
  homepage "https://plugins4free.com/plugin/2986"
  depends_on :macos
  artifact "2getheraudio-Ticky-Clav-2-Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
