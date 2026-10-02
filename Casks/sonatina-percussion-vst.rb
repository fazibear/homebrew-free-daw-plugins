cask "sonatina-percussion-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Percussion.vst.zip"
  name "Sonatina Percussion"
  desc "Sonatina Percussion is a sampled classical percussion set from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2330"
  depends_on :macos
  artifact "Sonatina Percussion.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Percussion.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Percussion.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Percussion.vst"]
  end
end
