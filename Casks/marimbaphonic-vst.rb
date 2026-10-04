cask "marimbaphonic-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Marimbaphonic_MacVST.zip"
  name "Marimbaphonic"
  desc "Marimbaphonic is a sampled marimba ."
  homepage "https://plugins4free.com/plugin/2013"
  depends_on :macos
  artifact "Marimbaphonic.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Marimbaphonic.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Marimbaphonic.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Marimbaphonic.vst"]
  end
end
