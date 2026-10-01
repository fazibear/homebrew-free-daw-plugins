cask "delta-zero" do
  version "0.4.0-beta"
  sha256 "c9fa210ed5e9eeb0d328aeb72cf3b0ebd641961faeb6d7923b77723e4fc674f0"
  url "https://github.com/nabsei/delta-zero/releases/download/v0.4.0-beta/DeltaZero_Beta_Mac.zip"
  name "delta-zero"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/delta-zero"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    copy "Delta Zero.component", "{{user}}/Library/Audio/Plug-Ins/Components/Delta Zero.component", recursive: true
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "Delta Zero.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Delta Zero.vst3", recursive: true
    mkdir_p "{{user}}/Applications"
    copy "Delta Zero.app", "{{user}}/Applications/Delta Zero.app", recursive: true
  end
end
