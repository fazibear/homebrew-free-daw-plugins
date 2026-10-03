cask "graphite-vst" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Graphite_Mac.zip"
  name "Graphite"
  desc "Graphite is a wavetable synthesizer ."
  homepage "https://plugins4free.com/plugin/3230"
  depends_on :macos
  pkg "Graphite.pkg"
end
