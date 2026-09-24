cask "project16-picked-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Project16_Picked_Bass.vst.zip"
  name "Project16 Picked Bass"
  desc "Project16 Picked Bass is a sampled Rickenbacker 4001 bass played with a pick."
  homepage "https://plugins4free.com/plugin/2320"
  depends_on :macos
  artifact "Project16 Picked Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
