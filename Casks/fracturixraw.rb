cask "fracturixraw" do
  version "1.0.1"
  sha256 "da48fe8b89477188bca486d9724eaaa7e9bf237b1884f363c7db676a5125affb"
  url "https://github.com/remiblaze/FracturixRaw/releases/download/v1.0.1/FracturixRaw_Installer.pkg"
  name "FracturixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/FracturixRaw"
  depends_on :macos
  pkg "FracturixRaw_Installer.pkg"
end
