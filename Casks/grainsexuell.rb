cask "grainsexuell" do
  version "0.3.0"
  sha256 "5f3ad8e6eb5187027029ecb6f857fb493569e6d2a0cab3454e79b6a7ac6f798f"
  url "https://github.com/Beatsex/grainsexuell/releases/download/v0.3.0/grainsexuell-beta-0.3.0-mac-installer.pkg"
  name "grainsexuell"
  desc "Free audio plugin"
  homepage "https://github.com/Beatsex/grainsexuell"
  depends_on :macos
  pkg "grainsexuell-beta-0.3.0-mac-installer.pkg"
end
