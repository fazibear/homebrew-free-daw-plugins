cask "project16-picked-bass-bass-guitar-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Project16_Picked_Bass.vst.zip"
  name "Project16 Picked Bass Bass guitar"
  desc "Project16 Picked Bass Bass guitar"
  homepage "https://plugins4free.com/plugin/2320"
  depends_on :macos
  artifact "Project16_Picked_Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
