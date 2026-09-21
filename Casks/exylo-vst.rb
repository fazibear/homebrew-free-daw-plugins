cask "exylo-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/eXylo_MacVST.zip"
  name "eXylo"
  desc "eXylo is a sampled xylophone ."
  homepage "https://plugins4free.com/plugin/2078"
  depends_on :macos
  artifact "eXylo_MacVST", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
