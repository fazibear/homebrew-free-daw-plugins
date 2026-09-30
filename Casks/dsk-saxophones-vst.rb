cask "dsk-saxophones-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DSK_Saxophones_-_macVST.zip"
  name "DSK Saxophones"
  desc "DSK Saxophones is a Soprano and Tenor sax rompler."
  homepage "https://plugins4free.com/plugin/2160"
  depends_on :macos
  artifact "DSK Saxophones - macVST/DSK Saxophones.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
