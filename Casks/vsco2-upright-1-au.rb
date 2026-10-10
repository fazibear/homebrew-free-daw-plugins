cask "vsco2-upright-1-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Upright_1.component.zip"
  name "VSCO2 Upright 1"
  desc "VSCO2 Upright 1 is a sampled upright piano ."
  homepage "https://plugins4free.com/plugin/2732"
  depends_on :macos
  artifact "VSCO2 Upright 1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Upright 1.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Upright 1.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Upright 1.component"]
  end
end
