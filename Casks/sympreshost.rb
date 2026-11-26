cask "sympreshost" do
  version "11.4.3-PianoToLife"
  sha256 "cc28534962374fde85d3209bd333048ee9427e205bf2c406baf66eb21376dc30"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.4.3-PianoToLife/PianoToLife-11.4.3-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.4.3-macOS-AppleSilicon.pkg"
end
