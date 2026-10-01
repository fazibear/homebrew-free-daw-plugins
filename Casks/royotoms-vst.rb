cask "royotoms-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Royotoms_MacVST.zip"
  name "Royotoms"
  desc "Royotoms is a sampled rototoms set."
  homepage "https://plugins4free.com/plugin/2391"
  depends_on :macos
  artifact "Royotoms.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Royotoms.vst"
end
