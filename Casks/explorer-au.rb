cask "explorer-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Explorer-MacAU.zip"
  name "Explorer"
  desc "Explorer is a waveshaping polyphonic synthesizer with wave shaper and oscillator modulation."
  homepage "https://plugins4free.com/plugin/3814"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Components/Explorer.component", "{{user}}/Library/Audio/Plug-Ins/Components/Explorer.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Components/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/Components/.DS_Store"
  end
end
