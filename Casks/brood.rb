cask "brood" do
  version "0.1.0"
  sha256 "f674b7afe559fff6907aa40168ba54446577546d0c6cfbe9fdbf6c1ebc25c651"
  url "https://github.com/Jackherz/Brood/releases/download/v0.1.0/Brood-0.1.0-macOS.pkg"
  name "Brood"
  desc "Free audio plugin"
  homepage "https://github.com/Jackherz/Brood"
  depends_on :macos
  pkg "Brood-0.1.0-macOS.pkg"
end
