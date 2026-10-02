cask "sonatina-horn-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Horn.component.zip"
  name "Sonatina Horn"
  desc "Sonatina Horn is a sampled horn ."
  homepage "https://plugins4free.com/plugin/2307"
  depends_on :macos
  artifact "Sonatina Horn.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Horn.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Horn.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Horn.component"]
  end
end
