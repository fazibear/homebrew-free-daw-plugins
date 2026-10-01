cask "miscellania-ii-holiday-bells-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Misc2_v1_AU.zip"
  name "Miscellania II: Holiday Bells"
  desc "Miscellania II: Holiday Bells is a fun little plug-in of six whole octaves (including black notes) of chimes, bells, triangles, finger-cymbals , pots, pans, and anything in between that manages to make a ding, ring, clang, or tang-a-lang. Oh yeah, and 10 RR tambourines in case you needed it..."
  homepage "https://plugins4free.com/plugin/1833"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Misc2_v1_AU.component", "{{user}}/Library/Audio/Plug-Ins/Components/Misc2_v1_AU.component", recursive: true
  end
end
