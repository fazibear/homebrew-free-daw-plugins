cask "angry-pig" do
  version "1.0.0"
  sha256 "7d4b3ba21e4a0a1cc17b94df141127059325790062611b78214ba5ef2fe1565b"
  url "https://github.com/Rafthouse/angry-pig/releases/download/v1.0.0/AngryPig-1.0.0-macOS.dmg"
  name "angry-pig"
  desc "Free audio plugin"
  homepage "https://github.com/Rafthouse/angry-pig"
  depends_on :macos
  container type: :dmg
  artifact "AngryPigSpike.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/AngryPigSpike.vst3"
end
