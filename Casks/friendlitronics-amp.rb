cask "friendlitronics-amp" do
  version "0.9.0"
  sha256 "1b1c5a29f2c3efdb6b6ee38a422cbc1ebad67a0266fd50a10175ca3f821c4422"
  url "https://github.com/Friendlitronics/friendlitronics-amp/releases/download/v0.9.0/FriendlitronicsAmp-0.8.0-macOS.zip"
  name "friendlitronics-amp"
  desc "Free audio plugin"
  homepage "https://github.com/Friendlitronics/friendlitronics-amp"
  depends_on :macos
  postflight_steps do
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/Components"
    move "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.component", "{{user}}/Library/Audio/Plug-Ins/Components/Friendlitronics Amp.component"
    mkdir_p "{{user}}/Library/Audio/Plug-Ins/VST3"
    move "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.vst3", "{{user}}/Library/Audio/Plug-Ins/VST3/Friendlitronics Amp.vst3"
  end
end
