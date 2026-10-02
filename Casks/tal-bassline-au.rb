cask "tal-bassline-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TAL-BassLine.component.zip"
  name "TAL-BassLine"
  desc "TAL-BassLine, a free virtual analog bass synthesizer especially made for bass, acid sounds and effects."
  homepage "https://plugins4free.com/plugin/688"
  depends_on :macos
  artifact "TAL-BassLine.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-BassLine.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-BassLine.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/TAL-BassLine.component"]
  end
end
