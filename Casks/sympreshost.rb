cask "sympreshost" do
  version "11.3.6-PianoToLife"
  sha256 "e1d28330dd65a065dad552f0f59f5250720f8edfe3675e95dc094d99feab1724"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.3.6-PianoToLife/PianoToLife-11.3.6-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.3.6-macOS-AppleSilicon.pkg"
end
