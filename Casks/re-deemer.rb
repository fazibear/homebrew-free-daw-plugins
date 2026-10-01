cask "re-deemer" do
  version "1.1.4"
  sha256 "5ed34a537dbb9f0d4497747bfeffa8235aa14c8cd11ff7add71f13e499511240"
  url "https://github.com/naturarum/re-deemer/releases/download/v1.1.4/RE-DEEMER-1.1.4-macos.zip"
  name "re-deemer"
  desc "Free audio plugin"
  homepage "https://github.com/naturarum/re-deemer"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/CLAP"
    move "RE-DEEMER/RE-DEEMER.clap", "{{user}}/Library/Audio/Plug-Ins/CLAP/RE-DEEMER.clap"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "RE-DEEMER/RE-DEEMER.component", "{{user}}/Library/Audio/Plug-Ins/Components/RE-DEEMER.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "RE-DEEMER/RE-DEEMER.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/RE-DEEMER.vst3"
  end
end
