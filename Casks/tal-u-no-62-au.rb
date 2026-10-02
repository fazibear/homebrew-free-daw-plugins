cask "tal-u-no-62-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TAL-U-No-62.component.zip"
  name "TAL-U-No-62"
  desc "The U-NO-62 vst plugin is a polyphonic virtual analogue synth with a unique filter sound."
  homepage "https://plugins4free.com/plugin/687"
  depends_on :macos
  artifact "TAL-U-No-62.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-U-No-62.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-U-No-62.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-U-No-62.component"]
  end
end
