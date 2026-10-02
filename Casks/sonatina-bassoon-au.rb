cask "sonatina-bassoon-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Bassoon.component.zip"
  name "Sonatina Bassoon"
  desc "Sonatina Bassoon is a sampled bassoon ."
  homepage "https://plugins4free.com/plugin/2309"
  depends_on :macos
  artifact "Sonatina Bassoon.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Bassoon.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Bassoon.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Bassoon.component"]
  end
end
