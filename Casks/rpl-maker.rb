cask "rpl-maker" do
  version "0.2.0"
  sha256 "231a1a1ca837295d3281658f0a283dcacdd2b78e0ce31e87df2f88a153ce226b"
  url "https://github.com/Matthew2244/rpl-maker/releases/download/v0.2.0/Magpie-mac.zip"
  name "rpl-maker"
  desc "Free audio plugin"
  homepage "https://github.com/Matthew2244/rpl-maker"
  depends_on :macos
  app "Magpie.app"
end
