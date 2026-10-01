cask "sympreshost" do
  version "8.2.8"
  sha256 "3ca9101eba1ef1c0bd8646082e7e73b82adaa76e04b2a58b1fee84b2e3d340ac"
  url "https://github.com/owfrappier/SympResHost/releases/download/v8.2.8/SympResHost-8.2.8-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "SympResHost-8.2.8-macOS-AppleSilicon.pkg"
end
