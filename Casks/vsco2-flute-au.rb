cask "vsco2-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Flute_V2.component.zip"
  name "VSCO2 Flute"
  desc "VSCO2 Flute is a sampled flute ."
  homepage "https://plugins4free.com/plugin/2721"
  depends_on :macos
  artifact "VSCO2 Flute.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Flute.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Flute.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Flute.component"]
  end
end
