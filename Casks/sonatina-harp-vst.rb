cask "sonatina-harp-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Harp.vst.zip"
  name "Sonatina Harp"
  desc "Sonatina Harp is a sampled classical harp ."
  homepage "https://plugins4free.com/plugin/2313"
  depends_on :macos
  artifact "Sonatina Harp.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Harp.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Harp.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Harp.vst"]
  end
end
