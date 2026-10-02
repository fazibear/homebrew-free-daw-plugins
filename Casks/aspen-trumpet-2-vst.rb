cask "aspen-trumpet-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Aspen-Trumpet-2_vst3.vst.zip"
  name "Aspen Trumpet 2"
  desc "Aspen Trumpet 2."
  homepage "https://plugins4free.com/plugin/3322"
  depends_on :macos
  artifact "Aspen Trumpet 2.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Trumpet 2.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Trumpet 2.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Aspen Trumpet 2.vst3.vst"]
  end
end
