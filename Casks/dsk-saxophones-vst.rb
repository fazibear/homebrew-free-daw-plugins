cask "dsk-saxophones-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_Saxophones_-_macVST.zip"
  name "DSK Saxophones"
  desc "DSK Saxophones is a Soprano and Tenor sax rompler."
  homepage "https://plugins4free.com/plugin/2160"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    move "DSK Saxophones - macVST/DSK Saxophones.vst", "{{user}}/Library/Audio/Plug-Ins/VST/DSK Saxophones.vst"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST"
    copy "DSK Saxophones - macVST/DSK Music - Readme.txt", "{{user}}/Library/Audio/Plug-Ins/VST/DSK Music - Readme.txt"
  end
end
