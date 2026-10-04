cask "marimbaphonic-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Marimbaphonic_MacAU.zip"
  name "Marimbaphonic"
  desc "Marimbaphonic is a sampled marimba ."
  homepage "https://plugins4free.com/plugin/2013"
  depends_on :macos
  artifact "Marimbaphonic.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Marimbaphonic.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Marimbaphonic.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Marimbaphonic.component"]
  end
end
