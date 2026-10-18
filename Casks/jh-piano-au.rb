cask "jh-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VCSL-JH-Piano_MacAU.zip"
  name "JH Piano"
  desc "VCSL JH Piano ."
  homepage "https://plugins4free.com/plugin/3573"
  depends_on :macos
  artifact "VCSL JH Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VCSL JH Piano.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VCSL JH Piano.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VCSL JH Piano.component"]
  end
end
