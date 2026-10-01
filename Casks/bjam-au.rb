cask "bjam-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/BJAM2_MacAU.zip"
  name "BJAM"
  desc "BJAM is a Strat electric guitar rompler."
  homepage "https://plugins4free.com/plugin/3067"
  depends_on :macos
  artifact "Mac AU/BJAM 2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/BJAM 2.component"
end
