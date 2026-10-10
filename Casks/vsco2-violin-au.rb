cask "vsco2-violin-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Violin.component_V2.zip"
  name "VSCO2 Violin"
  desc "VSCO2 Violin is a sampled solo violin ."
  homepage "https://plugins4free.com/plugin/2540"
  depends_on :macos
  artifact "VSCO2 Violin.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Violin.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Violin.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Violin.component"]
  end
end
