cask "binauralgenerator-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/binauralGenerator.vst.zip"
  name "binauralGenerator"
  desc "binauralGenerator is a binaural / monaural beats generator ."
  homepage "https://plugins4free.com/plugin/2582"
  depends_on :macos
  artifact "binauralGenerator.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/binauralGenerator.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/binauralGenerator.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/binauralGenerator.vst"]
  end
end
