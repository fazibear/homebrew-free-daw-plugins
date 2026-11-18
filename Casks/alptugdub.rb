cask "alptugdub" do
  version "2.0.0"
  sha256 "52731ed9859c800fc48b2fe18fe532b6e50ee3350fd576f8e8b537b1c7276271"
  url "https://github.com/AlptugDag/AlptugDUB/releases/download/v2.0.0/AlptugDUB-2.0.0-macOS.zip"
  name "AlptugDUB"
  desc "Free audio plugin"
  homepage "https://github.com/AlptugDag/AlptugDUB"
  depends_on :macos
  artifact "adub_rel/AlptugDUB.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/AlptugDUB.component"
  artifact "adub_rel/AlptugDUB.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/AlptugDUB.vst3"
  app "adub_rel/AlptugDUB.app", target: "#{Dir.home}/Applications/AlptugDUB.app"
end
