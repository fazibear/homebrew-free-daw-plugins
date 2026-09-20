cask "iowa-tuba-tuba-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Tuba.vst.zip"
  name "Iowa Tuba Tuba"
  desc "Iowa Tuba Tuba"
  homepage "https://plugins4free.com/plugin/2422"
  depends_on :macos
  artifact "Iowa_Tuba.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
