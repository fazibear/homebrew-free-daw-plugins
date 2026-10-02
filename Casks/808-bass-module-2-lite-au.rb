cask "808-bass-module-2-lite-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/808-Bass-Module-2-Lite_MacAU.zip"
  name "808 Bass Module 2 Lite"
  desc "808 Bass Module 2 Lite is a 808 bass ROMpler ."
  homepage "https://plugins4free.com/plugin/2709"
  depends_on :macos
  artifact "808 Bass Module 2 Lite v2.0 MAC AU/808 BM2 lite.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/808 BM2 lite.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/808 BM2 lite.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/808 BM2 lite.component"]
  end
end
