cask "delirion" do
  version "1.1.0"
  sha256 "3b9f4aa3b01d3b5e55577325bf7c7b7eb30bc5709537d838dfcf659a81a93022"
  url "https://github.com/igorski/delirion/releases/download/1.1.0/delirion.1.1.0_macos.zip"
  name "delirion"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/delirion"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "AU/Delirion.component", "{{user}}/Library/Audio/Plug-Ins/Components/Delirion.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "VST3/Delirion.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Delirion.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "README.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/README.txt"
  end
end
