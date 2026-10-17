cask "t-rex-1982-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TRex1982_MacVST.zip"
  name "T.Rex 1982"
  desc "T.Rex 1982 is a processed LinnDrum rompler ."
  homepage "https://plugins4free.com/plugin/3167"
  depends_on :macos
  artifact "T.Rex 1982.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/T.Rex 1982.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/T.Rex 1982.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/T.Rex 1982.vst3.vst"]
  end
end
