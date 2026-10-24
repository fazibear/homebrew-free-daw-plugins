cask "organic-calfskin-kit-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/OCK-VST-MAC.zip"
  name "Organic Calfskin Kit"
  desc "Organic Calfskin Kit (OCK) is an acoustic drum ROMpler."
  homepage "https://plugins4free.com/plugin/3209"
  depends_on :macos
  artifact "OCK.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/OCK.vst3"
end
