cask "sympreshost" do
  version "9.0.4-PianoToLife"
  sha256 "5668b89544ac191d6e84bfe1cb1d8994c6a3907913787f5383ae245224f9a0af"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.0.4-PianoToLife/PianoToLife-9.0.4-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-9.0.4-macOS-AppleSilicon.pkg"
end
