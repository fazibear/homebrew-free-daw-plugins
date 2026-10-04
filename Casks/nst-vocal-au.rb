cask "nst-vocal-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/NST_Vocal_Mac_AU.zip"
  name "NST Vocal"
  desc "NST Vocal is a sampled choral library."
  homepage "https://plugins4free.com/plugin/2888"
  depends_on :macos
  artifact "NST Choir Full.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Full.component"
  artifact "NST Choir High.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir High.component"
  artifact "NST Choir Low.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Low.component"
  artifact "NST Choir Mid 2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Mid 2.component"
  artifact "NST Choir Mid.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Mid.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Full.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Full.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir High.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir High.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Low.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Low.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Mid 2.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Mid 2.component"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Mid.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/NST Choir Mid.component"]
  end
end
