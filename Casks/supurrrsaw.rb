cask "supurrrsaw" do
  version "0.3.31"
  sha256 "942cc947c0854102a3a88986850d52da0ab64cfbc2e27c5223b3d01f46198853"
  url "https://github.com/SpeakingColors/SupurrrSaw-VST/releases/download/v0.3.31/SupurrSaw-v0.3.31-macos.zip"
  name "SupurrrSaw"
  desc "Free audio plugin"
  homepage "https://github.com/SpeakingColors/SupurrrSaw-VST"
  depends_on :macos
  pkg "SupurrSaw-v0.3.31-macos/app.pkg"
end
