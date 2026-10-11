cask "nst-pianos-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/NST_Pianos_Mac_AU.zip"
  name "NST Pianos"
  desc "NST Pianos is an acoustic keyboards set."
  homepage "https://plugins4free.com/plugin/2889"
  depends_on :macos
  artifact "NST Pianos.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Pianos.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Pianos.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Pianos.component"]
  end
end
