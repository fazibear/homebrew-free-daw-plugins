cask "rand-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Rand.vst.zip"
  name "Rand"
  desc "Rand is a generative synth sound module."
  homepage "https://plugins4free.com/plugin/3937"
  depends_on :macos
  artifact "Rand.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Rand.vst"
end
