cask "royotoms-rototoms-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Royotoms_MacAU.zip"
  name "Royotoms Rototoms"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2391"
  depends_on :macos
  artifact "Royotoms_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
