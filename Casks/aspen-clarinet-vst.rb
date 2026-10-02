cask "aspen-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Aspen-Clarinet_vst3.vst.zip"
  name "Aspen Clarinet"
  desc "Aspen Clarinet."
  homepage "https://plugins4free.com/plugin/3318"
  depends_on :macos
  artifact "Aspen Clarinet.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Clarinet.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Clarinet.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Clarinet.vst3.vst"]
  end
end
