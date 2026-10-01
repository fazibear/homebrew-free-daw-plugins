cask "bucket-pops-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/bucketpops_1_1_5_mac.pkg"
  name "Bucket Pops"
  desc "Bucket Pops simulates the classic KORG Mini Pops-7 Rhythm Machine from 1966."
  homepage "https://plugins4free.com/plugin/3231"
  depends_on :macos
  pkg "bucketpops_1_1_5_mac.pkg"
end
