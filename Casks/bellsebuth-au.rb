cask "bellsebuth-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/BellsEbuth_MacAU.zip"
  name "BellsEbuth"
  desc "BellsEbuth is a sampled orchestral bells (modern glockenspiel)."
  homepage "https://plugins4free.com/plugin/2150"
  depends_on :macos
  artifact "BellsEbuth.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/BellsEbuth.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/BellsEbuth.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/BellsEbuth.component"]
  end
end
