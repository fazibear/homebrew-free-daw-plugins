cask "sean-pandy-drums-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/spd-osx-vst.zip"
  name "Sean Pandy Drums"
  desc "Sean Pandy Drums is a acoustic drum rompler with Kick, Snare, 4 Toms and a Sub Blower."
  homepage "https://plugins4free.com/plugin/2462"
  depends_on :macos
  artifact "spd-multi-osx-vst/Sean Pandy Drums Multi.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums Multi.vst"
  artifact "spd-osx-vst/Sean Pandy Drums.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums Multi.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums Multi.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Sean Pandy Drums.vst"]
  end
end
