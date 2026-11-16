cask "pianotolife" do
  version "11.2.5-PianoToLife"
  sha256 "ea474546fcdaba11373020eee5395f390b4a1fbe05aa448ef902ef5755166191"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.2.5-PianoToLife/PianoToLife-11.2.5-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.2.5-macOS-AppleSilicon.pkg"
end
