cask "rave-generator-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/RaveGenerator2_MacVST.zip"
  name "Rave Generator 2"
  desc "Rave Generator 2 is an upgrade of Rave Generator: a rompler with a lot of funky rave stabs / samples coming straight from the 90s."
  homepage "https://plugins4free.com/plugin/2856"
  depends_on :macos
  artifact "RaveGenerator2.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/RaveGenerator2.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/RaveGenerator2.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/RaveGenerator2.vst"]
  end
end
