cask "sympreshost" do
  version "11.1.6-PianoToLife"
  sha256 "f0b6adb7eb691596925df8cf5f5a8b969a7a281bad5fde8a6423bdcf70e9604f"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.1.6-PianoToLife/PianoToLife-11.1.6-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.1.6-macOS-AppleSilicon.pkg"
end
