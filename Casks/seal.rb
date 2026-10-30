cask "seal" do
  version "1.2.0"
  sha256 "9ce081b1ea5de1dcc2e2523166fa10a170c2af76ef2172bd36b2c4c5309d5a91"
  url "https://github.com/Dirty-Octopus/seal/releases/download/v1.2.0/Seal-1.2.0-macos-universal.dmg"
  name "seal"
  desc "Free audio plugin"
  homepage "https://github.com/Dirty-Octopus/seal"
  depends_on :macos
  container type: :dmg
  app "Seal.app"
end
