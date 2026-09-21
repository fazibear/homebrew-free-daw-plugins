cask "stigma-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/stigma_1_3_1_mac.pkg"
  name "Stigma"
  desc "Stigma is simulates the KORG Sigma KP-30 Performing Synthesizer from 1979."
  homepage "https://plugins4free.com/plugin/2755"
  depends_on :macos
  pkg "stigma_1_3_1_mac.pkg"
end
