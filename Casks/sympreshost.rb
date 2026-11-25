cask "sympreshost" do
  version "11.4.1-PianoToLife"
  sha256 "578b9a05925f086d1c723abb93cb5dfaa23099dde83e061e0bedb46820e4e9f8"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.4.1-PianoToLife/PianoToLife-11.4.1-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.4.1-macOS-AppleSilicon.pkg"
end
