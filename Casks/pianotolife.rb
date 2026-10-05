cask "pianotolife" do
  version "9.1.2-PianoToLife"
  sha256 "6b05db8deb1399251eff57ddda125ff092e3713e87b861e47c486451466b32d8"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.1.2-PianoToLife/PianoToLife-9.1.2-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.1.2-macOS-AppleSilicon.pkg"
end
