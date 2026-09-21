cask "tal-noisemaker-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/tal-noisemaker-installer.pkg"
  name "TAL-NoiseMaker"
  desc "TAL-NoiseMaker is an improved version of TAL-Elek7ro and has a completely new synth engine and a lot of improvements in sound and usability."
  homepage "https://plugins4free.com/plugin/1504"
  depends_on :macos
  pkg "tal-noisemaker-installer.pkg"
end
