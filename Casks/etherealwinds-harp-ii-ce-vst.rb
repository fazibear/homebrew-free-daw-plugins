cask "etherealwinds-harp-ii-ce-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/EWHarp2_MacVST.zip"
  name "Etherealwinds Harp II CE"
  desc "Etherealwinds Harp II CE is a stereo sampled 34-string Iona celtic harp ."
  homepage "https://plugins4free.com/plugin/2857"
  depends_on :macos
  artifact "EWHarp2_MacVST.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/EWHarp2_MacVST.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/EWHarp2_MacVST.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/EWHarp2_MacVST.vst"]
  end
end
