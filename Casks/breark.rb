cask "breark" do
  version "1.0.0"
  sha256 "934cfb1478123b7155257f718b98e28797f880644f9ef406f3ea146c75af0097"
  url "https://github.com/kilianjaro/brEARk/releases/download/v1.0.0/brEARk-1.0.0-macOS.pkg"
  name "brEARk"
  desc "Free audio plugin"
  homepage "https://github.com/kilianjaro/brEARk"
  depends_on :macos
  pkg "brEARk-1.0.0-macOS.pkg"
end
