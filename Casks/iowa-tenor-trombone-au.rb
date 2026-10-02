cask "iowa-tenor-trombone-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Tenor_Trombone.component.zip"
  name "Iowa Tenor Trombone"
  desc "Iowa Tenor Trombone is a sampled tenor trombone from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2420"
  depends_on :macos
  artifact "Iowa Tenor Trombone.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Tenor Trombone.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Tenor Trombone.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Tenor Trombone.component"]
  end
end
