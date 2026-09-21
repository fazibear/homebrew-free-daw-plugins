cask "organ-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Organ_MacVST.zip"
  name "Organ"
  desc "Organ"
  homepage "https://plugins4free.com/plugin/3802"
  depends_on :macos
  artifact "Organ_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
