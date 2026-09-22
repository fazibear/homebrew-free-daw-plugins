cask "explorer-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Explorer-MacAU.zip"
  name "Explorer"
  desc "Explorer is a waveshaping polyphonic synthesizer with wave shaper and oscillator modulation."
  homepage "https://plugins4free.com/plugin/3814"
  depends_on :macos
  artifact "Components/Explorer.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
