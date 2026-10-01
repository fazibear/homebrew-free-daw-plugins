cask "peakeater" do
  version "0.8.2"
  sha256 "0df88ee26481843d0cc7762377bfefbb489a147a96fe6a9f2b9962834b92ba06"
  url "https://github.com/vvvar/PeakEater/releases/download/v0.8.2/peakeater-v0.8.2-macOS-universal.dmg"
  name "PeakEater"
  desc "Free wave-shaping audio plugin"
  homepage "https://github.com/vvvar/PeakEater"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    move "peakeater.clap", "{{user}}/Library/Audio/Plug-Ins/CLAP/peakeater.clap"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "peakeater.component", "{{user}}/Library/Audio/Plug-Ins/Components/peakeater.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/LV2"
    move "peakeater.lv2", "{{user}}/Library/Audio/Plug-Ins/LV2/peakeater.lv2"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "peakeater.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/peakeater.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    copy "CLAP", "{{user}}/Library/Audio/Plug-Ins/CLAP/CLAP"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/LV2"
    copy "LV2", "{{user}}/Library/Audio/Plug-Ins/LV2/LV2"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "VST3", "{{user}}/Library/Audio/Plug-Ins/VST3/VST3"
  end
end
