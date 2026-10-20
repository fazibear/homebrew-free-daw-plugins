cask "pianotolife" do
  version "10.1.9-PianoToLife"
  sha256 "5b877b8c63a55e4f81254e549f002dc6f95d7ad8be16cacb820d9746fa835b6d"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.1.9-PianoToLife/PianoToLife-10.1.9-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.1.9-macOS-AppleSilicon.pkg"
end
