cask "vsco2-percussion-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Percussion_V2.component.zip"
  name "VSCO2 Percussion"
  desc "VSCO2 Percussion is a sampled orchestral percussion set ."
  homepage "https://plugins4free.com/plugin/2728"
  depends_on :macos
  artifact "VSCO2 Percussion.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Percussion.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Percussion.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Percussion.component"]
  end
end
