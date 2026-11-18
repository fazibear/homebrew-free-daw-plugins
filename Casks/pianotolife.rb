cask "pianotolife" do
  version "11.3.0-PianoToLife"
  sha256 "11527e244517cacf0f899d24e7428c2070e1d3db901b3c07dae9680aefc6e63c"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.3.0-PianoToLife/PianoToLife-11.3.0-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.3.0-macOS-AppleSilicon.pkg"
end
