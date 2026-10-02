cask "serpo-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Serpo-Mac-Audio-Unit.zip"
  name "Serpo"
  desc "Serpo is an extremely simple to use free virtual instrument packed with original sounds recorded by artist from all over the world ."
  homepage "https://plugins4free.com/plugin/2567"
  depends_on :macos
  artifact "Serpo - Mac - Audio Unit/Serpo.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Serpo.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Serpo.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Serpo.component"]
  end
end
