cask "kairatune-au" do
  version "latest"
  sha256 :no_check
  url "https://alt1.plugins4free.com/get_plug/Kairatune-1.2.5-AUi-OSX.zip"
  name "Kairatune"
  desc "Kairatune is designed to produce crisp and tight electric sounds for electronic music production."
  homepage "https://plugins4free.com/plugin/1018"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Kairatune-1.2.5-AUi-OSX/Kairatune.component", "{{user}}/Library/Audio/Plug-Ins/Components/Kairatune.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Kairatune-1.2.5-AUi-OSX/.DS_Store", "{{user}}/Library/Audio/Plug-Ins/Components/.DS_Store"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Kairatune-1.2.5-AUi-OSX/readme.txt", "{{user}}/Library/Audio/Plug-Ins/Components/readme.txt"
  end
end
