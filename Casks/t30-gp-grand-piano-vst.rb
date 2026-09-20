cask "t30-gp-grand-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/T30-GP_MacVST.zip"
  name "T30-GP Grand Piano"
  desc "T30-GP Grand Piano"
  homepage "https://plugins4free.com/plugin/3659"
  depends_on :macos
  artifact "T30-GP_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
