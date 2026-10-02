cask "sympreshost" do
  version "8.2.12"
  sha256 "9a9b46c797f6a1e7445542661e92f9766e05b8e7297cb08904cd2019dc17fa9b"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v8.2.12/SympResHost-8.2.12-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "SympResHost-8.2.12-macOS-AppleSilicon.pkg"
end
