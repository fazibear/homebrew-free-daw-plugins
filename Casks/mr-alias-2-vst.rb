cask "mr-alias-2-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/MrAlias2_MacVST.zip"
  name "Mr. Alias 2"
  desc "Mr. Alias 2 uses non-bandlimited oscillators which can be transposed near to and beyond the Nyquist frequency, causing most of their spectra to be aliased back into audible non-harmonic frequencies."
  homepage "https://plugins4free.com/plugin/704"
  depends_on :macos
  artifact "Mr. Alias 2.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/Mr. Alias 2.vst"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-rd", "com.apple.quarantine", "#{Dir.home}/Library/Audio/Plug-Ins/VST/Mr. Alias 2.vst"], writable_paths: ["#{Dir.home}/Library/Audio/Plug-Ins/VST/Mr. Alias 2.vst"]
  end
end
