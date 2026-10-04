cask "ai-bass-mini-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/AI_Bass_Mini-Mac.zip"
  name "AI Bass Mini"
  desc "AI Bass Mini is an electric bass guitar."
  homepage "https://plugins4free.com/plugin/3940"
  depends_on :macos
  artifact "AI_Bass_Mini.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/AI_Bass_Mini.vst"
end
