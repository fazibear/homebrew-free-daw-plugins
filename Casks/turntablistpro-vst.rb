cask "turntablistpro-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/turntablist-au-1.1.0b10.dmg"
  name "TurntablistPro"
  desc "TTP can load a sample and perform turntable style effects on it."
  homepage "https://plugins4free.com/plugin/212"
  depends_on :macos
  container type: :dmg
  artifact "dfx Turntablist.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/dfx Turntablist.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/dfx Turntablist.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/dfx Turntablist.component"]
  end
end
