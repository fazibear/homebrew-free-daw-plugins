cask "ms-2-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MS-2_MacAU.zip"
  name "MS-2"
  desc "MS-2 is a 3 OP FM synthesizer ."
  homepage "https://plugins4free.com/plugin/3914"
  depends_on :macos
  artifact "MS-2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/MS-2.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/MS-2.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/MS-2.component"]
  end
end
