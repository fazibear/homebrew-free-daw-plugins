cask "iowa-tuba-au" do
  version "latest"
  sha256 :no_check
  url "https://plugins4free.com/get_plug/Iowa_Tuba.component.zip"
  name "Iowa Tuba"
  desc "Iowa Tuba is a sampled tuba from the University of Iowa Electronic Music Studios."
  homepage "https://plugins4free.com/plugin/2422"
  depends_on :macos
  artifact "Iowa Tuba.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Iowa Tuba.component"
end
