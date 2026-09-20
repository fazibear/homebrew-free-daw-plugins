cask "dexed-dx7-style-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Dexed_mac.zip"
  name "Dexed DX7 style synth"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/2026"
  depends_on :macos
  artifact "Dexed_mac", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
