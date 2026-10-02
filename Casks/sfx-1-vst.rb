cask "sfx-1-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SFX1-Mac.zip"
  name "SFX 1"
  desc "SFX 1 is a sound FX rompler ."
  homepage "https://plugins4free.com/plugin/3952"
  depends_on :macos
  artifact "SFX1.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/SFX1.vst"
end
