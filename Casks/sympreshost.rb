cask "sympreshost" do
  version "10.9.3-PianoToLife"
  sha256 "687b3a7635220cada3f1cdc2603099cb065a6b14678d36ba68496c2c0491c2b9"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.9.3-PianoToLife/PianoToLife-10.9.3-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-10.9.3-macOS-AppleSilicon.pkg"
end
