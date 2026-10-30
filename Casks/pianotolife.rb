cask "pianotolife" do
  version "10.5.2-PianoToLife"
  sha256 "ba4bb311dccb80c2d9528df2ab0cb4ea42185b9069b6700bfb22cc00bb03ac9e"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.5.2-PianoToLife/PianoToLife-10.5.2-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.5.2-macOS-AppleSilicon.pkg"
end
