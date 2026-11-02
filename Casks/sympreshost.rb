cask "sympreshost" do
  version "10.7.0-PianoToLife"
  sha256 "8048912cca14bcd47bc5527e2f1eabf94ea004123cacc0b357ddb3ed75d51b78"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.7.0-PianoToLife/PianoToLife-10.7.0-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.7.0-macOS-AppleSilicon.pkg"
end
