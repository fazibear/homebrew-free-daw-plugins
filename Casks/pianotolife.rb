cask "pianotolife" do
  version "11.4.2-PianoToLife"
  sha256 "f6be8864382eb95199ccc8b0389c2be0bdfbd466cb88f7dbdd4e6687c2750786"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v11.4.2-PianoToLife/PianoToLife-11.4.2-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-11.4.2-macOS-AppleSilicon.pkg"
end
