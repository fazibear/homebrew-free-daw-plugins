cask "bluechannel" do
  version "1.1.0"
  sha256 "f1d7abc63c3a1aea867dce9132bbdc04e1ea54af2ba4b3a3e5931d03addd5d8a"
  url "https://github.com/MistaMin/BlueChannel/releases/download/v1.1.0/Blue-Channel-1.1.0-macos.pkg"
  name "BlueChannel"
  desc "Free audio plugin"
  homepage "https://github.com/MistaMin/BlueChannel"
  depends_on :macos
  pkg "Blue-Channel-1.1.0-macos.pkg"
end
