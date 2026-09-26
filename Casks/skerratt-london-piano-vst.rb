cask "skerratt-london-piano-vst" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Skerratt_London_Piano.vst.zip"
  name "Skerratt London Piano"
  desc "Skerratt London Piano is a sampled upright piano ."
  homepage "https://plugins4free.com/plugin/2295"
  depends_on :macos
  artifact "Skerratt London Piano.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST"
end
