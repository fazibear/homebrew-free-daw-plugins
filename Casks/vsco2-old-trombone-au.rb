cask "vsco2-old-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Old_Trombone_V2.component.zip"
  name "VSCO2 Old Trombone"
  desc "VSCO2 Old Trombone is a sampled trombone ."
  homepage "https://plugins4free.com/plugin/2725"
  depends_on :macos
  artifact "VSCO2 Old Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Old Trombone.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Old Trombone.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Old Trombone.component"]
  end
end
