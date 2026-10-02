cask "sean-pandy-drums-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/spd-osx-au.zip"
  name "Sean Pandy Drums"
  desc "Sean Pandy Drums is a acoustic drum rompler with Kick, Snare, 4 Toms and a Sub Blower."
  homepage "https://plugins4free.com/plugin/2462"
  depends_on :macos
  artifact "spd-multi-osx-au/Sean Pandy Drums Multi.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums Multi.component"
  artifact "spd-osx-au/Sean Pandy Drums.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums Multi.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums Multi.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Sean Pandy Drums.component"]
  end
end
