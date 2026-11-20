cask "alptugdub" do
  version "3.0.0"
  sha256 "8f61c82fea50e7d043a4595288c5dfe0c61329df145c3d3350df720329a31fab"
  url "https://github.com/AlptugDag/AlptugDUB/releases/download/v3.0.0/AlptugDUB-3.0.0-macOS.zip"
  name "AlptugDUB"
  desc "Free audio plugin"
  homepage "https://github.com/AlptugDag/AlptugDUB"
  depends_on :macos
  artifact "AlptugDUB-3.0.0-macOS/AlptugDUB.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AlptugDUB.component"
  artifact "AlptugDUB-3.0.0-macOS/AlptugDUB.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/AlptugDUB.vst3"
end
