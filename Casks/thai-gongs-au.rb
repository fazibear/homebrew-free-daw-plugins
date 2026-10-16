cask "thai-gongs-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Thai-Gongs_MacAU.zip"
  name "Thai Gongs"
  desc "Thai Gongs is a sampled traditional chromatic gong set from Thailand."
  homepage "https://plugins4free.com/plugin/2218"
  depends_on :macos
  artifact "Thai Gongs.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Thai Gongs.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Thai Gongs.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Thai Gongs.component"]
  end
end
