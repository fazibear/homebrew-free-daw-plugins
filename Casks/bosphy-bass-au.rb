cask "bosphy-bass-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Bosphy-Bass_MacAU.zip"
  name "Bosphy Bass"
  desc "Bosphy Bass is a 4 bass pack."
  homepage "https://plugins4free.com/plugin/2481"
  depends_on :macos
  artifact "Bosphy Bass.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Bosphy Bass.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Bosphy Bass.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Bosphy Bass.component"]
  end
end
