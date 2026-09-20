cask "trap-e-piano-electronic-piano-patch-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SMI-Trap-EPiano(MacAU).zip"
  name "Trap E. Piano Electronic piano patch"
  desc "Trap E. Piano Electronic piano patch"
  homepage "https://plugins4free.com/plugin/2956"
  depends_on :macos
  artifact "SMI-Trap-EPiano(MacAU)", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
