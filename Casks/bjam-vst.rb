cask "bjam-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/BJAM2_MacVST.zip"
  name "BJAM"
  desc "BJAM is a Strat electric guitar rompler."
  homepage "https://plugins4free.com/plugin/3067"
  depends_on :macos
  artifact "Mac VST/BJAM 2.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/BJAM 2.vst"
end
