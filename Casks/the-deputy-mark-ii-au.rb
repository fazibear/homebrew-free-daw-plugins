cask "the-deputy-mark-ii-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/deputy_1_3_0_mac.pkg"
  name "The deputy Mark II"
  desc "The deputy Mark II is a plug-in in the tradition of classic string machines and early polyphonic synthesizers, written in native C++ code for high performance."
  homepage "https://plugins4free.com/plugin/1331"
  depends_on :macos
  pkg "deputy_1_3_0_mac.pkg"
end
