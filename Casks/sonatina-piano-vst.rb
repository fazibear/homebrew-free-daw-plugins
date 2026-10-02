cask "sonatina-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Piano.vst.zip"
  name "Sonatina Piano"
  desc "Sonatina Piano is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/2552"
  depends_on :macos
  artifact "Sonatina Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Piano.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Piano.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Piano.vst"]
  end
end
