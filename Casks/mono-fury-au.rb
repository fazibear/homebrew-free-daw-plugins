cask "mono-fury-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/monofury_2_3_1_mac.pkg"
  name "Mono/Fury"
  desc "Mono/Fury emulates the classic Korg Mono/Poly analog synthesizer of the early 1980s."
  homepage "https://plugins4free.com/plugin/995"
  depends_on :macos
  pkg "monofury_2_3_1_mac.pkg"
end
