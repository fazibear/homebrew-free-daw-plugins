cask "royotoms-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Royotoms_MacAU.zip"
  name "Royotoms"
  desc "Royotoms is a sampled rototoms set."
  homepage "https://plugins4free.com/plugin/2391"
  depends_on :macos
  artifact "Royotoms.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Royotoms.component"
end
