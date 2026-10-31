cask "sympreshost" do
  version "10.5.4-PianoToLife"
  sha256 "3c7250c6c2cb3a1340c49f0ef4f28a1231b1ecd2caad777f0384ec025b2d7587"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.5.4-PianoToLife/PianoToLife-10.5.4-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.5.4-macOS-AppleSilicon.pkg"
end
