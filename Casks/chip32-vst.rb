cask "chip32-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Chip32_2007_06_16.dmg"
  name "Chip32"
  desc "Chip32 is simple wave table synthesizer ."
  homepage "https://plugins4free.com/plugin/1067"
  depends_on :macos
  container type: :dmg
  artifact "VST/Chip32.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Chip32.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Chip32.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Chip32.vst"]
  end
end
