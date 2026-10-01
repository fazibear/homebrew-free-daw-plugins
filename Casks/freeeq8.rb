cask "freeeq8" do
  version "2.3.1"
  sha256 "906716bafbcdf81a1a88ff846f8f9639b47ac4fb0cc838881acc350fdcacb246"
  url "https://github.com/GareBear99/FreeEQ8/releases/download/v2.3.1/FreeEQ8-v2.3.1-macOS.dmg"
  name "FreeEQ8"
  desc "Free audio plugin"
  homepage "https://github.com/GareBear99/FreeEQ8"
  depends_on :macos
  container type: :dmg
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "FreeEQ8/FreeEQ8.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents"
    copy "FreeEQ8/FreeEQ8.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents"
    copy "FreeEQ8/FreeEQ8.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents/PkgInfo"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents/MacOS"
    copy "FreeEQ8/FreeEQ8.app/Contents/MacOS/FreeEQ8", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents/MacOS/FreeEQ8"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents/Resources"
    copy "FreeEQ8/FreeEQ8.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.app/Contents/Resources/RecentFilesMenuTemplate.nib"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents"
    copy "FreeEQ8/FreeEQ8.component/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents"
    copy "FreeEQ8/FreeEQ8.component/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents/PkgInfo"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents/_CodeSignature"
    copy "FreeEQ8/FreeEQ8.component/Contents/_CodeSignature/CodeResources", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents/_CodeSignature/CodeResources"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents/MacOS"
    copy "FreeEQ8/FreeEQ8.component/Contents/MacOS/FreeEQ8", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.component/Contents/MacOS/FreeEQ8"
  end
end
