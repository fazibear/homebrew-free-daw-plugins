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
    move "Delta Zero.component", "{{user}}/Library/Audio/Plug-Ins/Components/Delta Zero.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "Delta Zero.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Delta Zero.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "INSTALL.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/INSTALL.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "TERMS.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/TERMS.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents/MacOS"
    copy "Delta Zero.app/Contents/MacOS/Delta Zero", "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents/MacOS/Delta Zero"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents/Resources"
    copy "Delta Zero.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents/Resources/RecentFilesMenuTemplate.nib"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents"
    copy "Delta Zero.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents"
    copy "Delta Zero.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/Resources/Delta Zero.app/Contents/PkgInfo"
  end
end
