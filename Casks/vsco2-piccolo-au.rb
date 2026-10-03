cask "vsco2-piccolo-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Piccolo_V2.component.zip"
  name "VSCO2 Piccolo"
  desc "VSCO2 Piccolo is a sampled piccolo flute ."
  homepage "https://plugins4free.com/plugin/2730"
  depends_on :macos
  artifact "VSCO2 Piccolo.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Piccolo.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Piccolo.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Piccolo.component"]
  end
end
