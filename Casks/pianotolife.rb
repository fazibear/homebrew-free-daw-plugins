cask "pianotolife" do
  version "9.4.6-PianoToLife"
  sha256 "6ed450bd65bf5f72bcb608fbdd5118019167053e1f71391276e4495f72864cc1"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.4.6-PianoToLife/PianoToLife-9.4.6-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.4.6-macOS-AppleSilicon.pkg"
end
