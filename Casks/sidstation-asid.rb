cask "sidstation-asid" do
  version :latest
  sha256 :no_check
  url "https://benjamindehli.github.io/sidstation-asid/downloads/SidStation-ASID-macOS.zip"
  name "SidStation ASID"
  desc "SID-inspired synthesizer plugin"
  homepage "https://benjamindehli.github.io/sidstation-asid/"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
