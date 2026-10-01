cask "ana-1000-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/ANA-1000_Lurker_MacAU.zip"
  name "ANA-1000"
  desc "ANA-1000 is a 2 oscillators analog synthesizer ."
  homepage "https://plugins4free.com/plugin/3022"
  depends_on :macos
  artifact "ANA-1000_Lurker_v1.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/ANA-1000_Lurker_v1.component"
end
