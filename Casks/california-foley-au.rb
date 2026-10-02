cask "california-foley-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/California-Foley-MacAU.zip"
  name "California Foley"
  desc "Varazuvi California Foley is a foley sound effects VST plugin."
  homepage "https://plugins4free.com/plugin/1885"
  depends_on :macos
  artifact "California Foley Demo Mac AU/California Foley Demo Mac AU.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/California Foley Demo Mac AU.component"
end
