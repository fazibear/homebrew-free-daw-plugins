cask "friendlitronics-amp" do
  version "0.9.0"
  sha256 "1b1c5a29f2c3efdb6b6ee38a422cbc1ebad67a0266fd50a10175ca3f821c4422"
  url "https://github.com/Friendlitronics/friendlitronics-amp/releases/download/v0.9.0/FriendlitronicsAmp-0.8.0-macOS.zip"
  name "friendlitronics-amp"
  desc "Free audio plugin"
  homepage "https://github.com/Friendlitronics/friendlitronics-amp"
  depends_on :macos
  artifact "FriendlitronicsAmp-0.8.0-macOS/Friendlitronics Amp.vst3", target: "#{Dir.home}/Library/Audio/Plug-Ins/VST3"
end
