cask "freeeq8" do
  version "2.3.1"
  sha256 "906716bafbcdf81a1a88ff846f8f9639b47ac4fb0cc838881acc350fdcacb246"
  url "https://github.com/GareBear99/FreeEQ8/releases/download/v2.3.1/FreeEQ8-v2.3.1-macOS.dmg"
  name "FreeEQ8"
  desc "Free audio plugin"
  homepage "https://github.com/GareBear99/FreeEQ8"
  depends_on :macos
  dmg "FreeEQ8-v2.3.1-macOS.dmg"
end
