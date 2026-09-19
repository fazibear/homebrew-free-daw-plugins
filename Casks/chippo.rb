cask "chippo" do
  version "1.0"
  sha256 "920fae62a6e65d4faf597994ef482691cc6b542e8cfad0728fe693c280785afa"

  url "https://cycling74-web-assets.s3.amazonaws.com/patches/chippo/ChippoMAC.pkg"
  name "Chippo"
  desc "Harp effects plugin"
  homepage "https://www.emilyharpist.com/chippo"

  depends_on :macos

  pkg "ChippoMAC.pkg"
end
