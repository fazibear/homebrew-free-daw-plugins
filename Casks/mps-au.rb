cask "mps-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/mps_1_2_1_mac.pkg"
  name "MPS"
  desc "MPS – short for Musical Parameter Synthesizer – is a polyphonic synthesizer."
  homepage "https://plugins4free.com/plugin/2920"
  depends_on :macos
  pkg "mps_1_2_1_mac.pkg"
end
