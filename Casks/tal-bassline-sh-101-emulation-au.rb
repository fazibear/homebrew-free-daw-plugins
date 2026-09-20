cask "tal-bassline-sh-101-emulation-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/TAL-BassLine.component.zip"
  name "TAL-BassLine SH-101 emulation"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/688"
  depends_on :macos
  artifact "TAL-BassLine.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
