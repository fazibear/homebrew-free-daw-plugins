cask "breezy-day-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Breezy-Day_MacAU.zip"
  name "Breezy Day"
  desc "Breezy Day is a simple wind chimes rompler."
  homepage "https://plugins4free.com/plugin/3188"
  depends_on :macos
  artifact "Mac AU/Breezy Day.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
