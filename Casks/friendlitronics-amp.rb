cask "friendlitronics-amp" do
  version "0.9.0"
  sha256 "1b1c5a29f2c3efdb6b6ee38a422cbc1ebad67a0266fd50a10175ca3f821c4422"
  url "https://github.com/Friendlitronics/friendlitronics-amp/releases/download/v0.9.0/FriendlitronicsAmp-0.8.0-macOS.zip"
  name "friendlitronics-amp"
  desc "Free audio plugin"
  homepage "https://github.com/Friendlitronics/friendlitronics-amp"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.vst3"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    copy "FriendlitronicsAmp-0.8.0-macOS/How to install.txt", "{{user}}/Library/Audio/Plug-Ins/VST3/How to install.txt"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents"
    copy "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.component/Contents/CodeResources", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/CodeResources"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/_CodeSignature"
    copy "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.component/Contents/_CodeSignature/CodeResources", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/_CodeSignature/CodeResources"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/MacOS"
    copy "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.component/Contents/MacOS/Friendlitronics Amp", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/MacOS/Friendlitronics Amp"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents"
    copy "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.component/Contents/Info.plist", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/Info.plist"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents"
    copy "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.component/Contents/PkgInfo", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.component/Contents/PkgInfo"
  end
end
