cask "sympreshost" do
  version "8.2.11"
  sha256 "929a9f0c6024584066189aa2d7f8c82812f8a82264791fa4e415d024c19a1c16"
  url "https://github.com/owfrappier/SympResHost/releases/download/v8.2.11/SympResHost-8.2.11-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "SympResHost-8.2.11-macOS-AppleSilicon.pkg"
end
