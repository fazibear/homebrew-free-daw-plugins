cask "sonatina-viola-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Viola.vst.zip"
  name "Sonatina Viola"
  desc "Sonatina Viola is a sampled viola ."
  homepage "https://plugins4free.com/plugin/2298"
  depends_on :macos
  artifact "Sonatina Viola.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Viola.vst"
end
