cask "salamander-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Salamander_Piano.vst.zip"
  name "Salamander Piano"
  desc "Salamander Piano is a sampled Yamaha C5 Grand Piano ."
  homepage "https://plugins4free.com/plugin/2564"
  depends_on :macos
  artifact "Salamander Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Salamander Piano.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Salamander Piano.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Salamander Piano.vst"]
  end
end
