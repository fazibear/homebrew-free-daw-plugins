cask "illformed-glitch2" do
  version "2.1.5"
  sha256 "3639d98eed532037f7c9031ad561ed0c302b63e79aa514d86e66c94e2aa1cb60"

  url "https://illformed.com/downloads/Glitch_2_1_5_Mac_Free.zip"
  name "Glitch2"
  desc "Glitch effect plugin"
  homepage "https://illformed.com/glitch/"

  depends_on :macos

  artifact "Glitch2.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Glitch2.component"
  artifact "Glitch2.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Glitch2.vst3"
end
