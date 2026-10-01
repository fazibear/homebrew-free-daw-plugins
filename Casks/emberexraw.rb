cask "emberexraw" do
  version "1.0.1"
  sha256 "ecd8897cba38e650bad1447279c9e933cf5d570f5defed905acd78d6c251b490"
  url "https://github.com/remiblaze/EmberexRaw/releases/download/v1.0.1/EmberexRaw_Installer.pkg"
  name "EmberexRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/EmberexRaw"
  depends_on :macos
  pkg "EmberexRaw_Installer.pkg"
end
