cask "nabla-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/nabla_1_3_1_mac.pkg"
  name "Nabla"
  desc "The Nabla simulates the KORG Delta String DL-50 strings synthesizer from 1979."
  homepage "https://plugins4free.com/plugin/1868"
  depends_on :macos
  pkg "nabla_1_3_1_mac.pkg"
end
