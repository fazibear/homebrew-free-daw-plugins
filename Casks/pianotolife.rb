cask "pianotolife" do
  version "10.8.0-PianoToLife"
  sha256 "4b4aed2948c8edb98f53fcb0675c1c62a4fdcbde83512ca6188a70f5b5e5c815"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.8.0-PianoToLife/PianoToLife-10.8.0-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.8.0-macOS-AppleSilicon.pkg"
end
