cask "sinnah-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/NUSofting_Sinnah_macOS_AU_VST.pkg"
  name "Sinnah"
  desc "Sinnah is a synth based on a single complex oscillator that includes five waveshapes with increasing spectral complexity, harmonics level for all waveshapes, noise level, and a delay matrix."
  homepage "https://plugins4free.com/plugin/2484"
  depends_on :macos
  pkg "NUSofting_Sinnah_macOS_AU_VST.pkg"
end
