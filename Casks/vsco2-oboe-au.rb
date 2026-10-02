cask "vsco2-oboe-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Oboe_V2.component.zip"
  name "VSCO2 Oboe"
  desc "VSCO2 Oboe is a sampled oboe ."
  homepage "https://plugins4free.com/plugin/2724"
  depends_on :macos
  artifact "VSCO2 Oboe.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Oboe.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Oboe.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Oboe.component"]
  end
end
