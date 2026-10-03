cask "4front-rhode-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/4frhode-osx.zip"
  name "4Front Rhode"
  desc "4Front Rhode is a vintage Rhodes/Wurly typed piano module with gentle overdrive."
  homepage "https://plugins4free.com/plugin/269"
  depends_on :macos
  artifact "4Front Rhode.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Rhode.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Rhode.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front Rhode.component"]
  end
end
