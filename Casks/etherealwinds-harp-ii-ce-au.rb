cask "etherealwinds-harp-ii-ce-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/EWHarp2_AudioUnit.zip"
  name "Etherealwinds Harp II CE"
  desc "Etherealwinds Harp II CE is a stereo sampled 34-string Iona celtic harp ."
  homepage "https://plugins4free.com/plugin/2857"
  depends_on :macos
  artifact "EWHarp2_AudioUnit.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/EWHarp2_AudioUnit.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/EWHarp2_AudioUnit.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/EWHarp2_AudioUnit.component"]
  end
end
