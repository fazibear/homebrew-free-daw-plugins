cask "aspen-cornet-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Aspen-Cornet_vst3.vst.zip"
  name "Aspen Cornet"
  desc "Aspen Cornet ."
  homepage "https://plugins4free.com/plugin/3319"
  depends_on :macos
  artifact "Aspen Cornet.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Cornet.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Cornet.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Cornet.vst3.vst"]
  end
end
