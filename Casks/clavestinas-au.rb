cask "clavestinas-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Clavestinas_MacAU.zip"
  name "Clavestinas"
  desc "Clavestinas is a sampled clave set."
  homepage "https://plugins4free.com/plugin/2270"
  depends_on :macos
  artifact "Clavestinas.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Clavestinas.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Clavestinas.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Clavestinas.component"]
  end
end
