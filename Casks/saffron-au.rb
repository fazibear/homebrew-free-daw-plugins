cask "saffron-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Saffron_MacAU.zip"
  name "Saffron"
  desc "Saffron is a 15 Instruments pack."
  homepage "https://plugins4free.com/plugin/2480"
  depends_on :macos
  artifact "Saffron.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Saffron.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Saffron.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Saffron.component"]
  end
end
