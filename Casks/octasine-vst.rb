cask "octasine-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/OctaSine-macOS-Intel.zip"
  name "OctaSine"
  desc "OctaSine is a 4 operators FM synthesizer ."
  homepage "https://plugins4free.com/plugin/3474"
  depends_on :macos
  artifact "OctaSine.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
