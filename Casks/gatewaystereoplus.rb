cask "gatewaystereoplus" do
  version "1.0.0"
  sha256 "b04149d3464361dedf482406c8e5706baeb2fc8cbb80aec1cc30911720c2319e"
  url "https://github.com/Naaxas/GatewayStereoPlus/releases/download/v1.0.0/GatewayStereoPlus-1.0.0-macOS-arm64.zip"
  name "GatewayStereoPlus"
  desc "Free audio plugin"
  homepage "https://github.com/Naaxas/GatewayStereoPlus"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "GatewayStereoPlus-macOS-arm64/GatewayStereoPlus.component", "{{user}}/Library/Audio/Plug-Ins/Components/GatewayStereoPlus.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "GatewayStereoPlus-macOS-arm64/GatewayStereoPlus.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/GatewayStereoPlus.vst3"
  end
end
