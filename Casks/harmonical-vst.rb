cask "harmonical-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Harmonical_mac.zip"
  name "Harmonical"
  desc "Harmonical is a crazy instrument which uses spherical harmonics to modulate the vertices of a sphere."
  homepage "https://plugins4free.com/plugin/1649"
  depends_on :macos
  artifact "Harmonical.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Harmonical.vst"
end
