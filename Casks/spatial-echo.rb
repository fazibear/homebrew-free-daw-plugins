cask "spatial-echo" do
  version "1.0.0"
  sha256 "1ff2de3e0af8020b57886178983f095fb386f0885666059e049459d0ad48c77e"
  url "https://github.com/echoeslabmusic/Spatial-Echo/releases/download/v1.0.0/Spatial-Echo-v1.0.0-mac.pkg"
  name "Spatial-Echo"
  desc "Free audio plugin"
  homepage "https://github.com/echoeslabmusic/Spatial-Echo"
  depends_on :macos
  pkg "Spatial-Echo-v1.0.0-mac.pkg"
end
