cask "pianotolife" do
  version "9.1.6-PianoToLife"
  sha256 "60d76d9cc67e83ea0687bc0c9e7f62a100d516070c73db05a67527274102a995"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.1.6-PianoToLife/PianoToLife-9.1.6-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.1.6-macOS-AppleSilicon.pkg"
end
