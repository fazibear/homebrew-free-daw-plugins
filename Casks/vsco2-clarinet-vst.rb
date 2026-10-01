cask "vsco2-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/VSCO2_Clarinet_V2.vst.zip"
  name "VSCO2 Clarinet"
  desc "VSCO2 Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2720"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "VSCO2 Clarinet.vst", "{{user}}/Library/Audio/Plug-Ins/VST/VSCO2 Clarinet.vst"
  end
end
