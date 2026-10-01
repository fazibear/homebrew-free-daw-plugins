cask "homecorrupter" do
  version "1.2.0"
  sha256 "3eeadf2e351fb6e8df4e276ac2d590a0da96cd176f612e4aa0bc1a0a51b4910b"
  url "https://github.com/igorski/homecorrupter/releases/download/1.2.0/homecorrupter.1.2.0_macos.zip"
  name "homecorrupter"
  desc "Free audio plugin"
  homepage "https://github.com/igorski/homecorrupter"
  depends_on :macos
  artifact "VST/homecorrupter.vst", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST/homecorrupter.vst"
  artifact "VST3/homecorrupter.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/homecorrupter.vst3"
  app "AU/Homecorrupter AUV3.app", target: "#{Dir.home}/Applications/Homecorrupter AUV3.app"
end
