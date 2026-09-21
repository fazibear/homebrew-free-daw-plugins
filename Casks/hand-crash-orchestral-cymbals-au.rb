cask "hand-crash-orchestral-cymbals-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Hand-Crash_MacAU.zip"
  name "Hand Crash Orchestral cymbals"
  desc "Hand Crash Orchestral cymbals"
  homepage "https://plugins4free.com/plugin/2161"
  depends_on :macos
  artifact "Hand-Crash_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
