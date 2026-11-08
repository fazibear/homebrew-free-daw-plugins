cask "pianotolife" do
  version "10.9.9-PianoToLife"
  sha256 "d58c99d537d0b4e6afcf3a7688fc4d63e6c34634036b40dcbdeee532e91dc50f"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.9.9-PianoToLife/PianoToLife-10.9.9-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.9.9-macOS-AppleSilicon.pkg"
end
