cask "drosera" do
  version "1.0.0"
  sha256 "e73ce042acb8d528c3edcc25893881add53f517380a3871f35b68759f5c6e687"
  url "https://github.com/codeskine/Drosera/releases/download/v1.0.0/drosera-1.0.0-macos.pkg"
  name "Drosera"
  desc "Free audio plugin"
  homepage "https://github.com/codeskine/Drosera"
  depends_on :macos
  pkg "drosera-1.0.0-macos.pkg"
end
