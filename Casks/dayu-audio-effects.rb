cask "dayu-audio-effects" do
  version "1.2-build10"
  sha256 "fe2091fd17645df2e29dda981ce3ea66da6438a54564cdf14f8b835396ff7c1b"
  url "https://github.com/dayumeida/dayu-audio-effects/releases/download/v1.2-build10/DayuAudioEffects-1.2-build10-arm64.pkg"
  name "dayu-audio-effects"
  desc "Free audio plugin"
  homepage "https://github.com/dayumeida/dayu-audio-effects"
  depends_on :macos
  pkg "DayuAudioEffects-1.2-build10-arm64.pkg"
end
