cask "akitilt" do
  version "2.0.0"
  sha256 "f9b75cd8d85d220da3de3d0e842156d0d03239bcf0487f9a726e889e97624cc5"
  url "https://github.com/AkiroMusic/AkiTilt/releases/download/v2.0.0/AkiTilt-v2.0.0-macOS.zip"
  name "AkiTilt"
  desc "Free audio plugin"
  homepage "https://github.com/AkiroMusic/AkiTilt"
  depends_on :macos
  artifact "AkiTilt.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AkiTilt.component"
  artifact "AkiTilt.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/AkiTilt.vst3"
  app "AkiTilt.app", target: "#{Dir.home}/Applications/AkiTilt.app"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/AkiTilt.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/AkiTilt.component"]
  end
end
