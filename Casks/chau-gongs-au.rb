cask "chau-gongs-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Chau-Gongs_MacAU.zip"
  name "Chau Gongs"
  desc "Chau Gongs is a sampled chinese gong set."
  homepage "https://plugins4free.com/plugin/2237"
  depends_on :macos
  artifact "Chau Gongs.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Chau Gongs.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Chau Gongs.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Chau Gongs.component"]
  end
end
