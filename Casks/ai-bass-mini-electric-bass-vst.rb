cask "ai-bass-mini-electric-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/AI_Bass_Mini-Mac.zip"
  name "AI Bass Mini Electric bass"
  desc "AI Bass Mini Electric bass"
  homepage "https://plugins4free.com/plugin/3940"
  depends_on :macos
  artifact "AI_Bass_Mini-Mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
