cask "vsco2-trumpet-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Trumpet_V2.component.zip"
  name "VSCO2 Trumpet"
  desc "VSCO2 Trumpet is a sampled trumpet ."
  homepage "https://plugins4free.com/plugin/2557"
  depends_on :macos
  artifact "VSCO2 Trumpet.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Trumpet.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Trumpet.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Trumpet.component"]
  end
end
