cask "4front-bass-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/4fbass-osx.zip"
  name "4Front Bass"
  desc "4Front Bass is a small and versatile electric bass module."
  homepage "https://plugins4free.com/plugin/190"
  depends_on :macos
  artifact "4Front Bass.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Bass.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Bass.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Bass.component"]
  end
end
