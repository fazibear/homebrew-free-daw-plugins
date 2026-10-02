cask "hercules-v3-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Hercules-V3_%28MacOS%29.zip"
  name "Hercules V3"
  desc "Hercules V2 is a Supersaw synthesizer ."
  homepage "https://plugins4free.com/plugin/3456"
  depends_on :macos
  artifact "Hercules V3 (MacOS) experimental/Hercules V3.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Hercules V3.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Hercules V3.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Hercules V3.component"]
  end
end
