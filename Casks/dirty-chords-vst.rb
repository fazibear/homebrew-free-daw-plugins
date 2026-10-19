cask "dirty-chords-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/DIRTY-CHORDS-LITE-v1.1-MAC-VST.zip"
  name "Dirty Chords"
  desc "Dirty Chords Lite is a rompler to play chords with one finger."
  homepage "https://plugins4free.com/plugin/2808"
  depends_on :macos
  artifact "DIRTY CHORDS LITE v1.1 MAC VST/Dirty Chords Lite.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Dirty Chords Lite.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Dirty Chords Lite.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Dirty Chords Lite.vst"]
  end
end
