cask "pianotolife" do
  version "9.5.2-PianoToLife"
  sha256 "d737736f5cbfac9f6f3eeeca83b998ca119e377d47e11580766d6095005d89a8"
  url "https://github.com/owfrappier/PianoToLife/releases/download/v9.5.2-PianoToLife/PianoToLife-9.5.2-macOS-AppleSilicon.pkg"
  name "PianoToLife"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/PianoToLife"
  depends_on :macos
  pkg "PianoToLife-9.5.2-macOS-AppleSilicon.pkg"
end
