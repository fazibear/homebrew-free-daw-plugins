cask "t30-gp-grand-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/T30-GP_MacAU.zip"
  name "T30-GP Grand Piano"
  desc "T30-GP Grand Piano"
  homepage "https://plugins4free.com/plugin/3659"
  depends_on :macos
  artifact "T30-GP_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
