cask "gatewaystereoplus" do
  version "1.0.0"
  sha256 "b04149d3464361dedf482406c8e5706baeb2fc8cbb80aec1cc30911720c2319e"
  url "https://github.com/Naaxas/GatewayStereoPlus/releases/download/v1.0.0/GatewayStereoPlus-1.0.0-macOS-arm64.zip"
  name "GatewayStereoPlus"
  desc "Free audio plugin"
  homepage "https://github.com/Naaxas/GatewayStereoPlus"
  depends_on :macos
  artifact "GatewayStereoPlus-macOS-arm64/GatewayStereoPlus.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
