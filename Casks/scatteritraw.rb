cask "scatteritraw" do
  version "1.0.1"
  sha256 "876f2941745f66353cc14e934097928b7103ff877577bbfd147d41eac605d54e"
  url "https://github.com/remiblaze/ScatteritRaw/releases/download/v1.0.1/ScatteritRaw_Installer.pkg"
  name "ScatteritRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/ScatteritRaw"
  depends_on :macos
  pkg "ScatteritRaw_Installer.pkg"
end
