cask "harmonical-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Harmonical_mac.zip"
  name "Harmonical"
  desc "Harmonical is a crazy instrument which uses spherical harmonics to modulate the vertices of a sphere."
  homepage "https://plugins4free.com/plugin/1649"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "Harmonical.vst", "{{user}}/Library/Audio/Plug-Ins/VST/Harmonical.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "readme.htm", "{{user}}/Library/Audio/Plug-Ins/VST/readme.htm"
  end
end
