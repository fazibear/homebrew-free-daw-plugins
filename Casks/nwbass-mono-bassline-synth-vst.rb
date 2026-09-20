cask "nwbass-mono-bassline-synth-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/WWAYM_NWBass_V1_1.dmg"
  name "NWBass Mono bassline synth"
  desc "Free audio plugin"
  homepage "https://plugins4free.com/plugin/1073"
  depends_on :macos
  dmg "WWAYM_NWBass_V1_1.dmg"
end
