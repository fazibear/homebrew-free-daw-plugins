cask "montagem-punch" do
  version "0.2.0-beta"
  sha256 "935318ba77399d500d6dca82155717c2770a66d50d2f4b1c7bb7fc76aa20fa45"
  url "https://github.com/nabsei/montagem-punch/releases/download/v0.2.0-beta/MontagemPunch_Beta_Mac.zip"
  name "montagem-punch"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-punch"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Montagem Punch.component", "{{user}}/Library/Audio/Plug-Ins/Components/Montagem Punch.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "Montagem Punch.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Montagem Punch.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "INSTALL.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/INSTALL.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "TERMS.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/TERMS.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents/MacOS"
    copy "Montagem Punch.app/Contents/MacOS/Montagem Punch", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents/MacOS/Montagem Punch"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents/Resources"
    copy "Montagem Punch.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents/Resources/RecentFilesMenuTemplate.nib"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents"
    copy "Montagem Punch.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents"
    copy "Montagem Punch.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Punch.app/Contents/PkgInfo"
  end
end
