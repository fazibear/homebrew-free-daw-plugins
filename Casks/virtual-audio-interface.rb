cask "virtual-audio-interface" do
  version "0.3.2"
  sha256 "4e6a9a4f462a68e07318622db1f19a6815a4408ef705fa25bf44dfd030ca7768"
  url "https://github.com/daitomanabe/virtual-audio-interface/releases/download/v0.3.2/VirtualAudioInterface-0.3.2.pkg"
  name "virtual-audio-interface"
  desc "Free audio plugin"
  homepage "https://github.com/daitomanabe/virtual-audio-interface"
  depends_on :macos
  pkg "VirtualAudioInterface-0.3.2.pkg"
end
