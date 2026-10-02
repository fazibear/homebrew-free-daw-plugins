cask "sonatina-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Flute.component.zip"
  name "Sonatina Flute"
  desc "Sonatina Flute is a set of sampled flutes ."
  homepage "https://plugins4free.com/plugin/2312"
  depends_on :macos
  artifact "Sonatina Flute.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Flute.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Flute.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Flute.component"]
  end
end
