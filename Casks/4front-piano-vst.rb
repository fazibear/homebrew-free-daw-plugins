cask "4front-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/4fpiano-osx.zip"
  name "4Front Piano"
  desc "This is a small and versatile upright piano module with unique sound."
  homepage "https://plugins4free.com/plugin/971"
  depends_on :macos
  artifact "4Front Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Piano.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Piano.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Piano.component"]
  end
end
