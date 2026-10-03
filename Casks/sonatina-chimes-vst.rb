cask "sonatina-chimes-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Chimes.vst.zip"
  name "Sonatina Chimes"
  desc "Sonatina Chimes is a sampled tubular bells instrument from the Sonatina Orchestra public domain library."
  homepage "https://plugins4free.com/plugin/2328"
  depends_on :macos
  artifact "Sonatina Chimes.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Chimes.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Chimes.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Chimes.vst"]
  end
end
