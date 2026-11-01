cask "alptugdub" do
  version "1.2.0"
  sha256 "afd832499f189cc83228ef4a52a46753bce07dcb1fb541a9edfda650297c52ea"
  url "https://github.com/AlptugDag/AlptugDUB/releases/download/v1.2.0/AlptugDUB-1.2.0-macOS.zip"
  name "AlptugDUB"
  desc "Free audio plugin"
  homepage "https://github.com/AlptugDag/AlptugDUB"
  depends_on :macos
  artifact "AlptugDUB/AlptugDUB.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AlptugDUB.component"
  artifact "AlptugDUB/AlptugDUB.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/AlptugDUB.vst3"
end
