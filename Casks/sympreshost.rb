cask "sympreshost" do
  version "10.4.0-PianoToLife"
  sha256 "07c7805f12c02b926343d80cc7dcca7d24cd9bb82fe90ccf2bcf046c6b19bc09"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.4.0-PianoToLife/PianoToLife-10.4.0-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.4.0-macOS-AppleSilicon.pkg"
end
