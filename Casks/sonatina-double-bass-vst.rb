cask "sonatina-double-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Double_Bass.vst.zip"
  name "Sonatina Double Bass"
  desc "Sonatina Double Bass is a sampled double bass ."
  homepage "https://plugins4free.com/plugin/2303"
  depends_on :macos
  artifact "Sonatina Double Bass.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Double Bass.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Double Bass.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Double Bass.vst"]
  end
end
