cask "iowa-alto-sax-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Alto_Sax.component.zip"
  name "Iowa Alto Sax"
  desc "Iowa Alto Sax is a sampled alto saxophone from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2513"
  depends_on :macos
  artifact "Iowa Alto Sax.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
