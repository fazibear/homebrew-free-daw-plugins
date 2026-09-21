cask "iowa-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Iowa_Piano.component.zip"
  name "Iowa Piano"
  desc "Iowa Piano is a Steinway Grand Piano with almost every note sampled and 3 velocity layers."
  homepage "https://plugins4free.com/plugin/2294"
  depends_on :macos
  artifact "Iowa_Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
