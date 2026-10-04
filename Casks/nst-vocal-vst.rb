cask "nst-vocal-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/NST_Vocal_Mac_VST.zip"
  name "NST Vocal"
  desc "NST Vocal is a sampled choral library."
  homepage "https://plugins4free.com/plugin/2888"
  depends_on :macos
  artifact "NST Choir Full.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Full.vst3.vst"
  artifact "NST Choir High.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir High.vst3.vst"
  artifact "NST Choir Low.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Low.vst3.vst"
  artifact "NST Choir Mid 2.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Mid 2.vst3.vst"
  artifact "NST Choir Mid.vst3.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Mid.vst3.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Full.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Full.vst3.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir High.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir High.vst3.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Low.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Low.vst3.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Mid 2.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Mid 2.vst3.vst"]
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Mid.vst3.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/NST Choir Mid.vst3.vst"]
  end
end
