cask "cringe-dancer-releases" do
  version "1.0.0"
  sha256 "88d81ee77d4680608f1b671785460543fc04e19638b289f44cd8c86aa926adc2"
  url "https://github.com/alexlarichev/cringe-dancer-releases/releases/download/v1.0.0/CringeDancer-1.0.0-mac.dmg"
  name "Cringe Dancer Releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/cringe-dancer-releases"
  depends_on :macos
  dmg "CringeDancer-1.0.0-mac.dmg"
end
