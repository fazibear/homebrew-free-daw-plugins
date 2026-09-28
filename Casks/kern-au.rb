cask "kern-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/kern_1_1_5_mac.pkg"
  name "Kern"
  desc "Kern is a polyphonic synthesizer designed to run with and to be fully controlled by modern MIDI keyboard controllers."
  homepage "https://plugins4free.com/plugin/2272"
  depends_on :macos
  pkg "kern_1_1_5_mac.pkg"
end
