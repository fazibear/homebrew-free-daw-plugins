cask "sympreshost" do
  version "11.3.3-PianoToLife"
  sha256 "0b32bf79dc6f566d3f1a00e303555dd714ee8ae6cb1b3dd5b26652ae29e8f8c7"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.3.3-PianoToLife/PianoToLife-11.3.3-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.3.3-macOS-AppleSilicon.pkg"
end
