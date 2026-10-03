cask "goldengenerator-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/goldenGenerator.component.zip"
  name "goldenGenerator"
  desc "goldenGenerator is a binaural / monaural beats generator that works by waveforms based on the golden number."
  homepage "https://plugins4free.com/plugin/2688"
  depends_on :macos
  artifact "goldenGenerator.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/goldenGenerator.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/goldenGenerator.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/goldenGenerator.component"]
  end
end
