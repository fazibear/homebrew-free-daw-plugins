cask "sympreshost" do
  version "10.3.2-PianoToLife"
  sha256 "a75200319cd05a4dd5cc69d55b5b10d6d223c278296a13571fab7564dfe3dccb"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.3.2-PianoToLife/PianoToLife-10.3.2-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.3.2-macOS-AppleSilicon.pkg"
end
