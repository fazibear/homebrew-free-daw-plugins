cask "organ-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Organ_MacAU.zip"
  name "Organ"
  desc "Organ is an electric tonewheel organ emulation."
  homepage "https://plugins4free.com/plugin/3802"
  depends_on :macos
  artifact "Organ_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
