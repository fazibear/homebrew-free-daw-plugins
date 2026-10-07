cask "bucket-one-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/bucketone_1_0_0_mac.pkg"
  name "Bucket ONE"
  desc "Bucket ONE simulates the classic Crumar BIT 01/99 synthesizers from 1985."
  homepage "https://plugins4free.com/plugin/3948"
  depends_on :macos
  pkg "bucketone_1_0_0_mac.pkg"
end
