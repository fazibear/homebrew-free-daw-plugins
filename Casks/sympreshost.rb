cask "sympreshost" do
  version "10.9.4-PianoToLife"
  sha256 "2a6555c3fb5cb283e8046a490bc548609b3cb1c03724716be8905bc0c8ff15cb"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.9.4-PianoToLife/PianoToLife-10.9.4-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.9.4-macOS-AppleSilicon.pkg"
end
