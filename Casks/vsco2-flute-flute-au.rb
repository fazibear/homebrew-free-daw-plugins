cask "vsco2-flute-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Flute_V2.component.zip"
  name "VSCO2 Flute Flute"
  desc "VSCO2 Flute Flute"
  homepage "https://plugins4free.com/plugin/2721"
  depends_on :macos
  artifact "VSCO2_Flute_V2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
