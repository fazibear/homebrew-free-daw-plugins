cask "ribs-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Ribs_OSX-AU.zip"
  name "Ribs"
  desc "Ribs is a granular instrument / FX ."
  homepage "https://plugins4free.com/plugin/2829"
  depends_on :macos
  artifact "OSX-AU/Ribs.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
