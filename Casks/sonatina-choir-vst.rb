cask "sonatina-choir-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Choir.vst.zip"
  name "Sonatina Choir"
  desc "Sonatina Choir is are sampled male and female choir s."
  homepage "https://plugins4free.com/plugin/2310"
  depends_on :macos
  artifact "Sonatina Choir.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Choir.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Choir.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Choir.vst"]
  end
end
