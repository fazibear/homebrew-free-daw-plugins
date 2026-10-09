cask "synlay-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Synlay_MacAU.zip"
  name "Synlay"
  desc "Synlay is a delay-based synthesizer capable of producing very diverse, original timbres and of high quality, from blown to orchestral sounds, from basses to plucked strings, from violins to brasses and synthetic sounds"
  homepage "https://plugins4free.com/plugin/3011"
  depends_on :macos
  artifact "Synlay.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Synlay.component"
end
