cask "phantomic" do
  version "1.1.1"
  sha256 "b5450502b31a673f11f6412cde84a4baeda5853b72a57729bd9ce56a74536506"
  url "https://github.com/alexlarichev/phantomic-releases/releases/download/v1.1.1/Phantomic-1.1.1-mac.dmg"
  name "phantomic-releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/phantomic-releases"
  depends_on :macos
  dmg "Phantomic-1.1.1-mac.dmg"
end
