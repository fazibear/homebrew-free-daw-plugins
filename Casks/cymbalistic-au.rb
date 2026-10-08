cask "cymbalistic-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Cymbalistic_MacAU.zip"
  name "Cymbalistic"
  desc "Cymbalistic is a sampled cymbals set ."
  homepage "https://plugins4free.com/plugin/2168"
  depends_on :macos
  artifact "Cymbalistic.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Cymbalistic.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Cymbalistic.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Cymbalistic.component"]
  end
end
