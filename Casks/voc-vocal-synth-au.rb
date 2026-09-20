cask "voc-vocal-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Voc_MacAU.zip"
  name "Voc Vocal Synth"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2834"
  depends_on :macos
  artifact "Voc_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
