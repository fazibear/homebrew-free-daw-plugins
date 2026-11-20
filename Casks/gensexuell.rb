cask "gensexuell" do
  version "0.5.0"
  sha256 "9047d990a98e0ac210347d2ba8c6b3c919c1810f7bed68796a0b35fdf1010621"
  url "https://github.com/Beatsex/gensexuell/releases/download/v0.5.0/gensexuell-beta-0.5.0-macos-universal.pkg"
  name "gensexuell"
  desc "Free audio plugin"
  homepage "https://github.com/Beatsex/gensexuell"
  depends_on :macos
  pkg "gensexuell-beta-0.5.0-macos-universal.pkg"
end
