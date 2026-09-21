cask "tricent-mk-iii-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/tricent_1_1_3_mac.pkg"
  name "Tricent mk III"
  desc "Tricent mk III simulates the classic KORG Trident mk II from 1982."
  homepage "https://plugins4free.com/plugin/3084"
  depends_on :macos
  pkg "tricent_1_1_3_mac.pkg"
end
