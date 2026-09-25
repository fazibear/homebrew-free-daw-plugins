cask "the-grand-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_The_Grand_-_macVST.zip"
  name "The Grand"
  desc "The Grand is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2766"
  depends_on :macos
  artifact "DSK The Grand - macVST/DSK The Grand.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
