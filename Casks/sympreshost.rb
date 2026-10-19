cask "sympreshost" do
  version "10.1.5-PianoToLife"
  sha256 "bde1f76f3f7e20b0a901a1b9d84af8130b895ba4089f4ac88933ce7e41949551"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.1.5-PianoToLife/PianoToLife-10.1.5-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.1.5-macOS-AppleSilicon.pkg"
end
