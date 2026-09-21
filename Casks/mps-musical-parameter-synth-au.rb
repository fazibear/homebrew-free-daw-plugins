cask "mps-musical-parameter-synth-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/mps_1_2_1_mac.pkg"
  name "MPS Musical parameter synth"
  desc "MPS Musical parameter synth"
  homepage "https://plugins4free.com/plugin/2920"
  depends_on :macos
  pkg "mps_1_2_1_mac.pkg"
end
