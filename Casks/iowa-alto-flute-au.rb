cask "iowa-alto-flute-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Alto_Flute.component.zip"
  name "Iowa Alto Flute"
  desc "Iowa Alto Flute is a sampled alto flute from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2327"
  depends_on :macos
  artifact "Iowa Alto Flute.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Alto Flute.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Alto Flute.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Alto Flute.component"]
  end
end
