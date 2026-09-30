cask "montagem-808" do
  version "0.3.0-beta"
  sha256 "26eb62d8f527b820166ce0a04618f4f158fdfdee009e0ba2f101b7df677eceea"
  url "https://github.com/nabsei/montagem-808/releases/download/v0.3.0-beta/Montagem808_Beta_Mac.zip"
  name "montagem-808"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-808"
  depends_on :macos
  artifact "Montagem 808.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
