cask "vsco2-clarinet-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Clarinet_V2.component.zip"
  name "VSCO2 Clarinet"
  desc "VSCO2 Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2720"
  depends_on :macos
  artifact "VSCO2 Clarinet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
