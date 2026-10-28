cask "pianotolife" do
  version "10.4.6-PianoToLife"
  sha256 "0e5cac6a13513f2786d39a0b401dce4978c993e8aa3e46b29e78087f89c6e0f7"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.4.6-PianoToLife/PianoToLife-10.4.6-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.4.6-macOS-AppleSilicon.pkg"
end
