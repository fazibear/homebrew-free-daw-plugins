cask "dpinga-timbal-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DPinga_Timbal_MacAU.zip"
  name "DPinga Timbal"
  desc "D'Pinga Timbal is a set of timbales drums, cascaras and bells suitable for afro cuban and salsa music."
  homepage "https://plugins4free.com/plugin/2827"
  depends_on :macos
  artifact "DPinga_Timbal.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Timbal.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Timbal.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/DPinga_Timbal.component"]
  end
end
