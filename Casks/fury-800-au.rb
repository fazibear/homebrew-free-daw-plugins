cask "fury-800-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/fury800_2_4_2_mac.pkg"
  name "Fury-800"
  desc "Fury-800 simulates the KORG Poly-800 polyphonic synthesizer from 1983."
  homepage "https://plugins4free.com/plugin/3134"
  depends_on :macos
  pkg "fury800_2_4_2_mac.pkg"
end
