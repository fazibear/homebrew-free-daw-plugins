cask "pianotolife" do
  version "9.4.0-PianoToLife"
  sha256 "539d9c269e2d72f11efed5b0145a4f9b672845e7b79e4c9d980302309015c3b6"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.4.0-PianoToLife/PianoToLife-9.4.0-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.4.0-macOS-AppleSilicon.pkg"
end
