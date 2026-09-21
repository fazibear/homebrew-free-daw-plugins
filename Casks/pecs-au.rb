cask "pecs-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/pecs_1_0_2_mac.pkg"
  name "PECS"
  desc "PECS is a string machine based on the classic KORG PE-2000 Poly-Ensemble S from 1976."
  homepage "https://plugins4free.com/plugin/3885"
  depends_on :macos
  pkg "pecs_1_0_2_mac.pkg"
end
