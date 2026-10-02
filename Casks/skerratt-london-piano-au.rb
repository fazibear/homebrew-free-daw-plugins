cask "skerratt-london-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Skerratt_London_Piano.component.zip"
  name "Skerratt London Piano"
  desc "Skerratt London Piano is a sampled upright piano ."
  homepage "https://plugins4free.com/plugin/2295"
  depends_on :macos
  artifact "Skerratt London Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Skerratt London Piano.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Skerratt London Piano.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Skerratt London Piano.component"]
  end
end
