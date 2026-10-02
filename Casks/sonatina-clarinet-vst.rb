cask "sonatina-clarinet-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Clarinet.vst.zip"
  name "Sonatina Clarinet"
  desc "Sonatina Clarinet is a sampled clarinet ."
  homepage "https://plugins4free.com/plugin/2311"
  depends_on :macos
  artifact "Sonatina Clarinet.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Clarinet.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Clarinet.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sonatina Clarinet.vst"]
  end
end
