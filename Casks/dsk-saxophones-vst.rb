cask "dsk-saxophones-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DSK_Saxophones_-_macVST.zip"
  name "DSK Saxophones"
  desc "DSK Saxophones is a Soprano and Tenor sax rompler."
  homepage "https://plugins4free.com/plugin/2160"
  depends_on :macos
  artifact "DSK Saxophones - macVST/DSK Saxophones.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/DSK Saxophones.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/DSK Saxophones.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/DSK Saxophones.vst"]
  end
end
