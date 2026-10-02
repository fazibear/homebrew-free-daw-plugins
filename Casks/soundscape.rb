cask "soundscape" do
  version "0.2"
  sha256 "68472b22b8abee3091b0b2d5c91059bac8ce91e3b04ab8523daa52e1acb8c985"
  url "https://github.com/GR0SST/SoundScape/releases/download/v0.2/SoundScape.dmg"
  name "SoundScape"
  desc "Free audio plugin"
  homepage "https://github.com/GR0SST/SoundScape"
  depends_on :macos
  container type: :dmg
  app "SoundScape.app"
end
