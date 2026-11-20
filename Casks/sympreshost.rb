cask "sympreshost" do
  version "11.3.5-PianoToLife"
  sha256 "6fcd398f1802b6e68e9ef6708bd285baa8d40148dd79dd066addad9fea563e75"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.3.5-PianoToLife/PianoToLife-11.3.5-macOS-AppleSilicon.pkg"
  name "SympResHost"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/SympResHost"
  depends_on :macos
  pkg "PianoToLife-11.3.5-macOS-AppleSilicon.pkg"
end
