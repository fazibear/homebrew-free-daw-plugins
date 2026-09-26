cask "sympreshost" do
  version "8.0.72"
  sha256 "25a1b8f2b57953970b906b904a75cf9e003a4556638bb7e0201be74dee65466c"
  url "https://github.com/owfrappier/SympResHost/releases/download/v8.0.72/SympResHost-8.0.73-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "SympResHost-8.0.73-macOS-AppleSilicon.pkg"
end
