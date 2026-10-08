cask "pianotolife" do
  version "9.1.8-PianoToLife"
  sha256 "1d9a9a4f96d4c393a2a12e616bcceeae873c894bf44f782a0c7e8a1007e4e975"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.1.8-PianoToLife/PianoToLife-9.1.8-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.1.8-macOS-AppleSilicon.pkg"
end
