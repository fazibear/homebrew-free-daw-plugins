cask "sfx-1-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/SFX1-Mac.zip"
  name "SFX 1"
  desc "SFX 1 is a sound FX rompler ."
  homepage "https://plugins4free.com/plugin/3952"
  depends_on :macos
  artifact "SFX1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/SFX1.component"
end
