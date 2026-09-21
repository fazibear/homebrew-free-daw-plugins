cask "re-deemer" do
  version "1.1.4"
  sha256 "5ed34a537dbb9f0d4497747bfeffa8235aa14c8cd11ff7add71f13e499511240"
  url "https://github.com/naturarum/re-deemer/releases/download/v1.1.4/RE-DEEMER-1.1.4-macos.zip"
  name "re-deemer"
  desc "Free audio plugin"
  homepage "https://github.com/naturarum/re-deemer"
  depends_on :macos
  artifact "RE-DEEMER/RE-DEEMER.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components"
end
