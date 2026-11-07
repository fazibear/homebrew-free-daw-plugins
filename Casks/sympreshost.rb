cask "sympreshost" do
  version "10.9.6-PianoToLife"
  sha256 "2bf89c5e2c636f19ba0ee277db39775a4a88a8b56beb18d3fe4acf55ebb171c9"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.9.6-PianoToLife/PianoToLife-10.9.6-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.9.6-macOS-AppleSilicon.pkg"
end
