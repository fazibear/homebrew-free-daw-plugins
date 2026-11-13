cask "sympreshost" do
  version "11.1.5-PianoToLife"
  sha256 "2e230292e18c6f267efc613a277e5c1388d77d5ac71287aa8505631b7f88b241"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.1.5-PianoToLife/PianoToLife-11.1.5-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.1.5-macOS-AppleSilicon.pkg"
end
