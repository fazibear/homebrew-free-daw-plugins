cask "sampleswap-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SampleSwapInstaller_Mac.dmg"
  name "SampleSwap"
  desc "SampleSwap is a drum replacement sampler ."
  homepage "https://plugins4free.com/plugin/3671"
  depends_on :macos
  dmg "SampleSwapInstaller_Mac.dmg"
end
