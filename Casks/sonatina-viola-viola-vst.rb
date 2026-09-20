cask "sonatina-viola-viola-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Sonatina_Viola.vst.zip"
  name "Sonatina Viola Viola"
  desc "Sonatina Viola Viola"
  homepage "https://plugins4free.com/plugin/2298"
  depends_on :macos
  artifact "Sonatina_Viola.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
