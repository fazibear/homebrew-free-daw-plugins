cask "vsco2-marimba-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Marimba_V2.component.zip"
  name "VSCO2 Marimba"
  desc "VSCO2 Marimba is a sampled marimba ."
  homepage "https://plugins4free.com/plugin/2723"
  depends_on :macos
  artifact "VSCO2 Marimba.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Marimba.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Marimba.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Marimba.component"]
  end
end
