cask "vsco2-harp-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Harp_V2.component.zip"
  name "VSCO2 Harp"
  desc "VSCO2 Harp is a sampled harp ."
  homepage "https://plugins4free.com/plugin/2554"
  depends_on :macos
  artifact "VSCO2 Harp.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Harp.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Harp.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Harp.component"]
  end
end
