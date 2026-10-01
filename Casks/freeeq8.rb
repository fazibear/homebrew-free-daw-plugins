cask "freeeq8" do
  version "2.3.1"
  sha256 "906716bafbcdf81a1a88ff846f8f9639b47ac4fb0cc838881acc350fdcacb246"
  url "https://github.com/GareBear99/FreeEQ8/releases/download/v2.3.1/FreeEQ8-v2.3.1-macOS.dmg"
  name "FreeEQ8"
  desc "Free audio plugin"
  homepage "https://github.com/GareBear99/FreeEQ8"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "FreeEQ8/FreeEQ8.component", "{{user}}/Library/Audio/Plug-Ins/Components/FreeEQ8.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "FreeEQ8/FreeEQ8.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.vst3", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "ProEQ8/ProEQ8.component", "{{user}}/Library/Audio/Plug-Ins/Components/ProEQ8.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "ProEQ8/ProEQ8.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/ProEQ8.vst3", recursive: true
    mkdir_p "{{user}}/Applications"
    copy "FreeEQ8/FreeEQ8.app", "{{user}}/Applications/FreeEQ8.app", recursive: true
  end
end
