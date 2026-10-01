cask "montagem-808" do
  version "0.3.0-beta"
  sha256 "26eb62d8f527b820166ce0a04618f4f158fdfdee009e0ba2f101b7df677eceea"
  url "https://github.com/nabsei/montagem-808/releases/download/v0.3.0-beta/Montagem808_Beta_Mac.zip"
  name "montagem-808"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-808"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Montagem 808.component", "{{user}}/Library/Audio/Plug-Ins/Components/Montagem 808.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "Montagem 808.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Montagem 808.vst3", recursive: true
    mkdir_p "{{user}}/Applications"
    copy "Montagem 808.app", "{{user}}/Applications/Montagem 808.app", recursive: true
  end
end
