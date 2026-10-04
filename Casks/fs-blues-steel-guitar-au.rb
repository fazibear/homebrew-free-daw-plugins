cask "fs-blues-steel-guitar-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/FS_Blues_Steel_Guitar.component.zip"
  name "FS Blues Steel Guitar"
  desc "FS Blues Steel Guitar is a sampled steel strings acoustic guitar ."
  homepage "https://plugins4free.com/plugin/2333"
  depends_on :macos
  artifact "FS Blues Steel Guitar.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/FS Blues Steel Guitar.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/FS Blues Steel Guitar.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/FS Blues Steel Guitar.component"]
  end
end
