cask "vsco2-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Trombone_V2.component.zip"
  name "VSCO2 Trombone"
  desc "VSCO2 Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2556"
  depends_on :macos
  artifact "VSCO2 Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
