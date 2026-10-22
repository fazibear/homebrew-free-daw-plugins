cask "sympreshost" do
  version "10.3.1-PianoToLife"
  sha256 "2d68bcaadc75cf7503a84f57ca3a182846218c6c9f15c2f488f0d29afe000803"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.3.1-PianoToLife/PianoToLife-10.3.1-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.3.1-macOS-AppleSilicon.pkg"
end
