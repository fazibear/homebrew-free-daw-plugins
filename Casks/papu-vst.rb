cask "papu-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/PAPU_MacVST.zip"
  name "PAPU"
  desc "PAPU is a Nintendo Gameboy synthesizer emulation ."
  homepage "https://plugins4free.com/plugin/2838"
  depends_on :macos
  artifact "PAPU.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/PAPU.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/PAPU.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/PAPU.vst"]
  end
end
