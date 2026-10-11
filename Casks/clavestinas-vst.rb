cask "clavestinas-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Clavestinas_MacVST.zip"
  name "Clavestinas"
  desc "Clavestinas is a sampled clave set."
  homepage "https://plugins4free.com/plugin/2270"
  depends_on :macos
  artifact "Clavestinas.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Clavestinas.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Clavestinas.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Clavestinas.vst"]
  end
end
