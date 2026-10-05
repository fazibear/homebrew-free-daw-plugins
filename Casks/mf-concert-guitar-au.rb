cask "mf-concert-guitar-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MF_Concert_Guitar.component.zip"
  name "MF Concert Guitar"
  desc "MF Concert Guitar is a sampled nylon strings guitar ."
  homepage "https://plugins4free.com/plugin/2317"
  depends_on :macos
  artifact "MF Concert Guitar.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/MF Concert Guitar.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/MF Concert Guitar.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/MF Concert Guitar.component"]
  end
end
