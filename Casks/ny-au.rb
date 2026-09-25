cask "ny-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/ny_1_0_1_mac.pkg"
  name "Ny"
  desc "Ny simulates the classic KORG Lambda ES-50 Polyphonic Ensemble from 1979."
  homepage "https://plugins4free.com/plugin/3965"
  depends_on :macos
  pkg "ny_1_0_1_mac.pkg"
end
