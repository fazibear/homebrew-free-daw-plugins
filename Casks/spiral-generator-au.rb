cask "spiral-generator-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/SpiralGenerator_MacAU.zip"
  name "Spiral Generator"
  desc "Spiral Generator is an oscilloscope-music inspired 3D synthesizer ."
  homepage "https://plugins4free.com/plugin/2778"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "SpiralGenerator.component/SpiralGenerator.component", "{{user}}/Library/Audio/Plug-Ins/Components/SpiralGenerator.component"
  end
end
