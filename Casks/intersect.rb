cask "intersect" do
  version "0.16.0"
  sha256 "a34db140bfee11cb4eb2fbd28c9de92fcf902c4c3afa60ebd5c417543f6c51d2"
  url "https://github.com/tucktuckg00se/INTERSECT/releases/download/v0.16.0/INTERSECT-v0.16.0-macOS-arm64.zip"
  name "INTERSECT"
  desc "Free audio plugin"
  homepage "https://github.com/tucktuckg00se/INTERSECT"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "INTERSECT.component", "{{user}}/Library/Audio/Plug-Ins/Components/INTERSECT.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "INTERSECT.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/INTERSECT.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/_CodeSignature"
    copy "INTERSECT.app/Contents/_CodeSignature/CodeResources", "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/_CodeSignature/CodeResources"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/MacOS"
    copy "INTERSECT.app/Contents/MacOS/INTERSECT", "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/MacOS/INTERSECT"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/Resources"
    copy "INTERSECT.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/Resources/RecentFilesMenuTemplate.nib"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents"
    copy "INTERSECT.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents"
    copy "INTERSECT.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/Resources/INTERSECT.app/Contents/PkgInfo"
  end
end
