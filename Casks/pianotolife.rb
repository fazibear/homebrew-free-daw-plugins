cask "pianotolife" do
  version "10.9.2-PianoToLife"
  sha256 "96e44173d3fbc91d66b9781e8c802afd14e49c501b25d539af199e0680606874"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.9.2-PianoToLife/PianoToLife-10.9.2-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.9.2-macOS-AppleSilicon.pkg"
end
