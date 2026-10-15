cask "the-blooo-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/blooo_2_3_2_mac.pkg"
  name "The blooo"
  desc "The blooo is a VST polyphonic based on the classic subtractive synthesis architecture."
  homepage "https://plugins4free.com/plugin/893"
  depends_on :macos
  pkg "blooo_2_3_2_mac.pkg"
end
