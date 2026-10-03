cask "sonatina-double-bass-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Sonatina_Double_Bass.component.zip"
  name "Sonatina Double Bass"
  desc "Sonatina Double Bass is a sampled double bass ."
  homepage "https://plugins4free.com/plugin/2303"
  depends_on :macos
  artifact "Sonatina Double Bass.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Double Bass.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Double Bass.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sonatina Double Bass.component"]
  end
end
