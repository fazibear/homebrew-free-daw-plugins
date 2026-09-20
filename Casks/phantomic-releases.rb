cask "phantomic-releases" do
  version "1.1.0"
  sha256 "4165c8567d7fea74f21249655bef915b29e02d83a471161294601403cbbaa47c"
  url "https://github.com/alexlarichev/phantomic-releases/releases/download/v1.1.0/Phantomic-1.1.0-mac.dmg"
  name "Phantomic Releases"
  desc "Free audio plugin"
  homepage "https://github.com/alexlarichev/phantomic-releases"
  depends_on :macos
  dmg "Phantomic-1.1.0-mac.dmg"
end
