cask "world-stringz-string-instruments-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_World_StringZ_VST3_mac.zip"
  name "World StringZ String instruments"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/1085"
  depends_on :macos
  artifact "DSK_World_StringZ_VST3_mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
