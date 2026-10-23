cask "dpinga-congas-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DPinga_Congas_MacAU.zip"
  name "DPinga Congas"
  desc "DPinga Congas is a set of conga drums (Quinto, Conga and Tumba) suitable for afro cuban / salsa music."
  homepage "https://plugins4free.com/plugin/2825"
  depends_on :macos
  artifact "DPinga_Congas.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Congas.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Congas.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Congas.component"]
  end
end
