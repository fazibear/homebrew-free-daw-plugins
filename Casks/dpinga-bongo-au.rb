cask "dpinga-bongo-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DPinga_Bongo_MacAU.zip"
  name "DPinga Bongo"
  desc "DPinga Bongo is a set of bongo drums and a campana (hand cowbell) suitable for afro cuban / salsa music."
  homepage "https://plugins4free.com/plugin/2824"
  depends_on :macos
  artifact "DPinga_Bongo.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Bongo.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Bongo.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Bongo.component"]
  end
end
