cask "bouncitraw" do
  version "1.0.2"
  sha256 "7be7c082cd7062a3cbfb2a85ac2772d1911dd9e6be11b3e11563bd46c3257018"
  url "https://github.com/remiblaze/BouncitRaw/releases/download/v1.0.2/BouncitRaw_Installer.pkg"
  name "BouncitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/BouncitRaw"
  depends_on :macos
  pkg "BouncitRaw_Installer.pkg"
end
