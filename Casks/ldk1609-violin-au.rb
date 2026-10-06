cask "ldk1609-violin-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/LDK1609_Violin.component.zip"
  name "LDK1609 Violin"
  desc "LDK1609 Violin is a sampled violin ."
  homepage "https://plugins4free.com/plugin/2417"
  depends_on :macos
  artifact "LDK1609 Violin.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/LDK1609 Violin.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/LDK1609 Violin.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/LDK1609 Violin.component"]
  end
end
