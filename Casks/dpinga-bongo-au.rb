cask "dpinga-bongo-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/DPinga_Bongo_MacAU.zip"
  name "DPinga Bongo"
  desc "DPinga Bongo is a set of bongo drums and a campana (hand cowbell) suitable for afro cuban / salsa music."
  homepage "https://plugins4free.com/plugin/2824"
  depends_on :macos
  artifact "DPinga_Bongo_MacAU", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
