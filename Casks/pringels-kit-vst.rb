cask "pringels-kit-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Pringels%20Kit-Mac.zip"
  name "Pringels Kit"
  desc "Pringels Kit was made by sampling a can of potato chips ."
  homepage "https://plugins4free.com/plugin/3947"
  depends_on :macos
  artifact "Pringels Kit - Crazy Sampling Mac/CS-Pringels Kit Plugin/Pringels Kit.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Pringels Kit.vst"
end
