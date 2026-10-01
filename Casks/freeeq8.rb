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
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "FreeEQ8/FreeEQ8.component", "{{user}}/Library/Audio/Plug-Ins/Components/FreeEQ8.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "FreeEQ8/FreeEQ8.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/FreeEQ8.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "ProEQ8/ProEQ8.component", "{{user}}/Library/Audio/Plug-Ins/Components/ProEQ8.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "ProEQ8/ProEQ8.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/ProEQ8.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources"
    copy "README.txt", "{{user}}/Library/Audio/Plug-Ins/Resources/README.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents"
    copy "FreeEQ8/FreeEQ8.app/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents"
    copy "FreeEQ8/FreeEQ8.app/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents/PkgInfo"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents/MacOS"
    copy "FreeEQ8/FreeEQ8.app/Contents/MacOS/FreeEQ8", "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents/MacOS/FreeEQ8"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents/Resources"
    copy "FreeEQ8/FreeEQ8.app/Contents/Resources/RecentFilesMenuTemplate.nib", "{{user}}/Library/Audio/Plug-Ins/Resources/FreeEQ8/FreeEQ8.app/Contents/Resources/RecentFilesMenuTemplate.nib"
  end
end
