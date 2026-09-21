cask "iowa-soprano-sax-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Soprano_Sax.vst.zip"
  name "Iowa Soprano Sax"
  desc "Iowa Soprano Sax"
  homepage "https://plugins4free.com/plugin/2512"
  depends_on :macos
  artifact "Iowa_Soprano_Sax.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
