cask "t30-gp-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/T30-GP_MacAU.zip"
  name "T30-GP"
  desc "T30-GP is a sampled Grand Piano ."
  homepage "https://plugins4free.com/plugin/3659"
  depends_on :macos
  artifact "T30-GP.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/T30-GP.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/T30-GP.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/T30-GP.component"]
  end
end
