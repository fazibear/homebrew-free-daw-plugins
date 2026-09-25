cask "the-grand-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_The_Grand_-_macAU.zip"
  name "The Grand"
  desc "The Grand is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2766"
  depends_on :macos
  artifact "DSK The Grand - macAU/DSK The Grand.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
