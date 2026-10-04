cask "exylo-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/eXylo_MacAU.zip"
  name "eXylo"
  desc "eXylo is a sampled xylophone ."
  homepage "https://plugins4free.com/plugin/2078"
  depends_on :macos
  artifact "eXylo.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/eXylo.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/eXylo.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/eXylo.component"]
  end
end
