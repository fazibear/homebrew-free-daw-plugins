cask "prismateraw" do
  version "1.0.1"
  sha256 "57966a70af563e8ce8199f2c810309c47c3b48c8405694da53f7f7debce75aae"
  url "https://github.com/remiblaze/PrismateRaw/releases/download/v1.0.1/PrismateRaw_Installer.pkg"
  name "PrismateRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/PrismateRaw"
  depends_on :macos
  pkg "PrismateRaw_Installer.pkg"
end
