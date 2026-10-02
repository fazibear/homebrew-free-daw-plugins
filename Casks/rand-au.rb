cask "rand-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Rand.component.zip"
  name "Rand"
  desc "Rand is a generative synth sound module."
  homepage "https://plugins4free.com/plugin/3937"
  depends_on :macos
  artifact "Rand.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Rand.component"
end
