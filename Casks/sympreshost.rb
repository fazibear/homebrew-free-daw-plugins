cask "sympreshost" do
  version "9.2.0-PianoToLife"
  sha256 "d37d86ae417a8e5971ded9744f09b2508c95143aba90f5a884fb0cf43bfe5a9a"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.2.0-PianoToLife/PianoToLife-9.2.0-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-9.2.0-macOS-AppleSilicon.pkg"
end
