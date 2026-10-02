cask "vsco2-tuba-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Tuba_V2.component.zip"
  name "VSCO2 Tuba"
  desc "VSCO2 Tuba is a sampled tuba ."
  homepage "https://plugins4free.com/plugin/2558"
  depends_on :macos
  artifact "VSCO2 Tuba.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Tuba.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Tuba.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Tuba.component"]
  end
end
