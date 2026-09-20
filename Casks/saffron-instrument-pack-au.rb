cask "saffron-instrument-pack-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Saffron_MacAU.zip"
  name "Saffron Instrument pack"
  desc "Saffron Instrument pack"
  homepage "https://plugins4free.com/plugin/2480"
  depends_on :macos
  artifact "Saffron_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
