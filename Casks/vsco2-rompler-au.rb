cask "vsco2-rompler-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO2_Orchestra.component.zip"
  name "VSCO2 Rompler"
  desc "VSCO2 Rompler is a complete orchestral instruments rompler."
  homepage "https://plugins4free.com/plugin/2734"
  depends_on :macos
  artifact "VSCO2 Orchestra.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Orchestra.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Orchestra.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO2 Orchestra.component"]
  end
end
