cask "sonatina-timpani-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Timpani.vst.zip"
  name "Sonatina Timpani"
  desc "Sonatina Timpani is a sampled timpani from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2331"
  depends_on :macos
  artifact "Sonatina Timpani.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Timpani.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Timpani.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Timpani.vst"]
  end
end
