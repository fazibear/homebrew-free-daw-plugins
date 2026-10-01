cask "clampitraw" do
  version "1.0.1"
  sha256 "dea8c3a64640f6f5fec5594f0a04be1845a269d9ad8d92ce11569d673b8197fa"
  url "https://github.com/remiblaze/ClampitRaw/releases/download/v1.0.1/ClampitRaw_Installer.pkg"
  name "ClampitRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/ClampitRaw"
  depends_on :macos
  pkg "ClampitRaw_Installer.pkg"
end
