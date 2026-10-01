cask "tal-u-no-62-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/TAL-U-No-62.vst.zip"
  name "TAL-U-No-62"
  desc "The U-NO-62 vst plugin is a polyphonic virtual analogue synth with a unique filter sound."
  homepage "https://plugins4free.com/plugin/687"
  depends_on :macos
  artifact "TAL-U-No-62.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/TAL-U-No-62.vst"
end
