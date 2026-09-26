cask "skerratt-london-piano-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Skerratt_London_Piano.component.zip"
  name "Skerratt London Piano"
  desc "Skerratt London Piano is a sampled upright piano ."
  homepage "https://plugins4free.com/plugin/2295"
  depends_on :macos
  artifact "Skerratt London Piano.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
