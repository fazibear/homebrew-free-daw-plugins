cask "pianotolife" do
  version "10.6.1-PianoToLife"
  sha256 "7a0b8c30626dc4a446634e134a403cf75f2fc28b37f2b5954ee506cd6192f261"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.6.1-PianoToLife/PianoToLife-10.6.1-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.6.1-macOS-AppleSilicon.pkg"
end
