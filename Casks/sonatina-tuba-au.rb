cask "sonatina-tuba-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Tuba.component.zip"
  name "Sonatina Tuba"
  desc "Sonatina Tuba is a sampled tuba ."
  homepage "https://plugins4free.com/plugin/2308"
  depends_on :macos
  artifact "Sonatina Tuba.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Tuba.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Tuba.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Tuba.component"]
  end
end
