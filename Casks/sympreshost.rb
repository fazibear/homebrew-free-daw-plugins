cask "sympreshost" do
  version "11.1.0-PianoToLife"
  sha256 "a3ff0ac15472c785795f44421e125caa6977a46b5fc32ea9fd725dcc2c4d7be8"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.1.0-PianoToLife/PianoToLife-11.1.0-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.1.0-macOS-AppleSilicon.pkg"
end
