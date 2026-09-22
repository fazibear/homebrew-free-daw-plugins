cask "sonatina-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Clarinet.vst.zip"
  name "Sonatina Clarinet"
  desc "Sonatina Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2311"
  depends_on :macos
  artifact "Sonatina Clarinet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
