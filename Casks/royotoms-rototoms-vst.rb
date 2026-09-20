cask "royotoms-rototoms-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Royotoms_MacVST.zip"
  name "Royotoms Rototoms"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2391"
  depends_on :macos
  artifact "Royotoms_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
