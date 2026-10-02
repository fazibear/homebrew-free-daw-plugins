cask "tal-elek7ro-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TAL-Elek7ro-II.vst.zip"
  name "TAL-Elek7ro"
  desc "TAL-Elek7ro is a virtual analog synth with some special features like oscillator hardsync and frequncy modulation."
  homepage "https://plugins4free.com/plugin/600"
  depends_on :macos
  artifact "TAL-Elek7ro-II.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/TAL-Elek7ro-II.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/TAL-Elek7ro-II.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/TAL-Elek7ro-II.vst"]
  end
end
