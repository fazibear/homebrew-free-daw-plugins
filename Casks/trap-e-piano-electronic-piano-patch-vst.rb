cask "trap-e-piano-electronic-piano-patch-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SMI-Trap-EPiano(MacVST).zip"
  name "Trap E. Piano Electronic piano patch"
  desc "Trap E. Piano Electronic piano patch"
  homepage "https://plugins4free.com/plugin/2956"
  depends_on :macos
  artifact "SMI-Trap-EPiano(MacVST)", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
