cask "sonatina-viola-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Viola.component.zip"
  name "Sonatina Viola"
  desc "Sonatina Viola is a sampled viola ."
  homepage "https://plugins4free.com/plugin/2298"
  depends_on :macos
  artifact "Sonatina Viola.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Viola.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Viola.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Viola.component"]
  end
end
