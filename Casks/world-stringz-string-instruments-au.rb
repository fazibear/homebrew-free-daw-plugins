cask "world-stringz-string-instruments-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_World_StringZ_AU.zip"
  name "World StringZ String instruments"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/1085"
  depends_on :macos
  artifact "DSK_World_StringZ_AU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
