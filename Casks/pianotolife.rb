cask "pianotolife" do
  version "11.4.0-PianoToLife"
  sha256 "f3abf776ce03209cf10a42c58aa69d417e13f336e113831cb4949d72da53a58c"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.4.0-PianoToLife/PianoToLife-11.4.0-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.4.0-macOS-AppleSilicon.pkg"
end
