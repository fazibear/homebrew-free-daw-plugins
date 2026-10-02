cask "sonatina-cello-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Cello.vst.zip"
  name "Sonatina Cello"
  desc "Sonatina Cello is a sampled Cello ."
  homepage "https://plugins4free.com/plugin/2299"
  depends_on :macos
  artifact "Sonatina Cello.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Cello.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Cello.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Cello.vst"]
  end
end
