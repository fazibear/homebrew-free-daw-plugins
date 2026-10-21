cask "pianotolife" do
  version "10.3.0-PianoToLife"
  sha256 "38c7398a3cd16965cb9e114acbd43fff96c4f8b3470989fdf42ac8503d758bf7"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v10.3.0-PianoToLife/PianoToLife-10.3.0-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-10.3.0-macOS-AppleSilicon.pkg"
end
