cask "pianotolife" do
  version "9.5.3-PianoToLife"
  sha256 "ddbdab3f9b6979fa7c6eed715188a6a809e5990e239917d1a5bf87517bb2b27e"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.5.3-PianoToLife/PianoToLife-9.5.3-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.5.3-macOS-AppleSilicon.pkg"
end
