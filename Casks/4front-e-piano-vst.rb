cask "4front-e-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/4fepiano-osx.zip"
  name "4Front E-Piano"
  desc "E-Piano module with a rich, warm and silky sound."
  homepage "https://plugins4free.com/plugin/970"
  depends_on :macos
  artifact "4Front E-Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front E-Piano.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front E-Piano.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/4Front E-Piano.component"]
  end
end
