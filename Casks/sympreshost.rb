cask "sympreshost" do
  version "11.3.1-PianoToLife"
  sha256 "09f6c285191abcf66b51dd12c52ad94bc9dbeb88875656157fa87201e61965cf"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.3.1-PianoToLife/PianoToLife-11.3.1-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.3.1-macOS-AppleSilicon.pkg"
end
