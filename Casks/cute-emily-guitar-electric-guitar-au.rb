cask "cute-emily-guitar-electric-guitar-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Karoryfer_Cute_Emily_Guitar.component.zip"
  name "Cute Emily Guitar Electric guitar"
  desc "Cute Emily Guitar Electric guitar"
  homepage "https://plugins4free.com/plugin/2315"
  depends_on :macos
  artifact "Karoryfer_Cute_Emily_Guitar.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
