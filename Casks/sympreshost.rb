cask "sympreshost" do
  version "10.3.8-PianoToLife"
  sha256 "8dacad6a556dd8a78e47f645093ab58eef81284e9f41acaa93748bf66b6f28ef"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.3.8-PianoToLife/PianoToLife-10.3.8-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.3.8-macOS-AppleSilicon.pkg"
end
