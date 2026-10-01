cask "big-dawg" do
  version "0.2.0"
  sha256 "15d893da2e38c4ae1da132f0bc3a0ff6185f04096b8b70519933c9a5f443b544"
  url "https://github.com/orphicaxiom/big-dawg/releases/download/v0.2.0/BigDawg-v0.2.0-macOS.zip"
  name "big-dawg"
  desc "Free audio plugin"
  homepage "https://github.com/orphicaxiom/big-dawg"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "BigDawg-v0.2.0-macOS/BigDawg.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/BigDawg.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "BigDawg-v0.2.0-macOS/BigDawg.component", "{{user}}/Library/Audio/Plug-Ins/Components/BigDawg.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents/MacOS"
    copy "BigDawg-v0.2.0-macOS/BigDawg.app/Contents/MacOS/BigDawg", "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents/MacOS/BigDawg"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents/Resources"
    copy "BigDawg-v0.2.0-macOS/BigDawg.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents/Resources/RecentFilesMenuTemplate.nib"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents"
    copy "BigDawg-v0.2.0-macOS/BigDawg.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents"
    copy "BigDawg-v0.2.0-macOS/BigDawg.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/BigDawg.app/Contents/PkgInfo"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS"
    copy "BigDawg-v0.2.0-macOS/README.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/BigDawg-v0.2.0-macOS/README.txt"
  end
end
