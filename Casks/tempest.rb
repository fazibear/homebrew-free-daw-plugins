cask "tempest" do
  version "1.0.0"
  sha256 "3a18b031c1d03ae202610537b99e7315f81e838324c47a6969fe688174bf66de"
  url "https://github.com/nickdc8/tempest/releases/download/v1.0.0/Tempest-1.0.0-macOS-universal.zip"
  name "tempest"
  desc "Free audio plugin"
  homepage "https://github.com/nickdc8/tempest"
  depends_on :macos
  artifact "Tempest/Tempest.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Tempest.component"
  artifact "Tempest/Tempest.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3/Tempest.vst3"
  app "Tempest/Tempest.app", target: "#{Dir.home}/Applications/Tempest.app"
end
