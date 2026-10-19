cask "dirty-chords-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DIRTY-CHORDS-LITE-v1.1_MAC_AU.zip"
  name "Dirty Chords"
  desc "Dirty Chords Lite is a rompler to play chords with one finger."
  homepage "https://plugins4free.com/plugin/2808"
  depends_on :macos
  artifact "DIRTY CHORDS LITE v1.1 MAC AU/Dirty Chords Lite.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Dirty Chords Lite.component"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/Components/Dirty Chords Lite.component"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/Components/Dirty Chords Lite.component"]
  end
end
