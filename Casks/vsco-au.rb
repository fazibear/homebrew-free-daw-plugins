cask "vsco-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/VSCO_AU_v1.zip"
  name "VSCO"
  desc "The Versilian Studios Chamber Orchestra is a small selection of standard orchestral and wind ensemble sampled instruments."
  homepage "https://plugins4free.com/plugin/1891"
  depends_on :macos
  artifact "VSCO_AU_v1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO_AU_v1.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO_AU_v1.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/VSCO_AU_v1.component"]
  end
end
