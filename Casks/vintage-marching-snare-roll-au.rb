cask "vintage-marching-snare-roll-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Marching-Snare_MacAU.zip"
  name "Vintage Marching Snare Roll"
  desc "Vintage Marching Snare Roll is a marching band drum snare ."
  homepage "https://plugins4free.com/plugin/3077"
  depends_on :macos
  artifact "Marching Snare.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Marching Snare.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Marching Snare.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Marching Snare.component"]
  end
end
