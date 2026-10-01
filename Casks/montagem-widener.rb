cask "montagem-widener" do
  version "0.2.0-beta"
  sha256 "e5aa1d7d5d0c14c1356768987de5cb3b09ce98aacb281a6da184031aeb53aa37"
  url "https://github.com/nabsei/montagem-widener/releases/download/v0.2.0-beta/MontagemWidener_Beta_Mac.zip"
  name "montagem-widener"
  desc "Free audio plugin"
  homepage "https://github.com/nabsei/montagem-widener"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "Montagem Widener.component", "{{user}}/Library/Audio/Plug-Ins/Components/Montagem Widener.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "Montagem Widener.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Montagem Widener.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "INSTALL.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/INSTALL.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents/MacOS"
    copy "Montagem Widener.app/Contents/MacOS/Montagem Widener", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents/MacOS/Montagem Widener"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents/Resources"
    copy "Montagem Widener.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents/Resources/RecentFilesMenuTemplate.nib"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents"
    copy "Montagem Widener.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents"
    copy "Montagem Widener.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/Resources/Montagem Widener.app/Contents/PkgInfo"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "TERMS.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/TERMS.txt"
  end
end
