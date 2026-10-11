cask "sympreshost" do
  version "9.4.3-PianoToLife"
  sha256 "f117d9c59da3cb33447de27c83502623059cb98a51700be05a08d774967b8777"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.4.3-PianoToLife/PianoToLife-9.4.3-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-9.4.3-macOS-AppleSilicon.pkg"
end
