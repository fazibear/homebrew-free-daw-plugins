cask "miscellania-ii-holiday-bells-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Misc2_v1_AU.zip"
  name "Miscellania II: Holiday Bells"
  desc "Miscellania II: Holiday Bells is a fun little plug-in of six whole octaves (including black notes) of chimes, bells, triangles, finger-cymbals , pots, pans, and anything in between that manages to make a ding, ring, clang, or tang-a-lang. Oh yeah, and 10 RR tambourines in case you needed it..."
  homepage "https://plugins4free.com/plugin/1833"
  depends_on :macos
  artifact "Misc2_v1_AU.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Misc2_v1_AU.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Misc2_v1_AU.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Misc2_v1_AU.component"]
  end
end
