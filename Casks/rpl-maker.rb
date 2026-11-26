cask "rpl-maker" do
  version "0.3.0"
  sha256 "63a9fed92a5e07052b1b482a846f61f7951cec5ccb3ad63a22a540aa88044691"
  url "https://github.com/Matthew2244/rpl-maker/releases/download/v0.3.0/Magpie-mac.zip"
  name "rpl-maker"
  desc "Free audio plugin"
  homepage "https://github.com/Matthew2244/rpl-maker"
  depends_on :macos
  app "Magpie.app"
end
