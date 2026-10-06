cask "vsco2-xylophone-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Xylophone_V2.component.zip"
  name "VSCO2 Xylophone"
  desc "VSCO2 Xylophone is a sampled xylophone ."
  homepage "https://plugins4free.com/plugin/2733"
  depends_on :macos
  artifact "VSCO2 Xylophone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Xylophone.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Xylophone.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Xylophone.component"]
  end
end
