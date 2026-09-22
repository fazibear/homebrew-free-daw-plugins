cask "project16-fingered-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Project16_Fingered_Bass.vst.zip"
  name "Project16 Fingered Bass"
  desc "Project16 Fingered Bass is a sampled Rickenbacker 4001 bass played with the fingers."
  homepage "https://plugins4free.com/plugin/2319"
  depends_on :macos
  artifact "Project16 Fingered Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
