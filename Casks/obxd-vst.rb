cask "obxd-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Obxd_MacVST.zip"
  name "OBXD"
  desc "Obxd is an emulation of the famous Oberheim ob-x, ob-xa and ob8 synths."
  homepage "https://plugins4free.com/plugin/1844"
  depends_on :macos
  artifact "Obxd.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Obxd.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Obxd.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Obxd.vst"]
  end
end
