cask "peakeater" do
  version "0.8.2"
  sha256 "0df88ee26481843d0cc7762377bfefbb489a147a96fe6a9f2b9962834b92ba06"
  url "https://github.com/vvvar/PeakEater/releases/download/v0.8.2/peakeater-v0.8.2-macOS-universal.dmg"
  name "PeakEater"
  desc "Free wave-shaping audio plugin"
  homepage "https://github.com/vvvar/PeakEater"
  depends_on :macos
  container type: :dmg
  artifact "peakeater.clap", target: "#{Dir.home}/Library/Audio/Plug-Ins/CLAP/peakeater.clap"
  artifact "peakeater.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/peakeater.component"
  artifact "peakeater.lv2", target: "#{Dir.home}/Library/Audio/Plug-Ins/LV2/peakeater.lv2"
  artifact "peakeater.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/peakeater.vst3"
end
