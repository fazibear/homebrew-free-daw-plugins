cask "sonatina-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Trombone.component.zip"
  name "Sonatina Trombone"
  desc "Sonatina Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2306"
  depends_on :macos
  artifact "Sonatina Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Trombone.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Trombone.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Trombone.component"]
  end
end
