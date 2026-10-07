cask "pianotolife" do
  version "9.1.7-PianoToLife"
  sha256 "336c98c61b6249e31cae7e187f3443a26096686c7f3a58d3e8b63d9c528f2d6f"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.1.7-PianoToLife/PianoToLife-9.1.7-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.1.7-macOS-AppleSilicon.pkg"
end
