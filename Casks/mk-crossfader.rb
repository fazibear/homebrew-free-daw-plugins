cask "mk-crossfader" do
  version "0.3.1"
  sha256 "1bab24a571f45f8135207faccfb78cc79f8cbd0caba6fc350b21101c35a4d889"
  url "https://github.com/mks-devx/MK-Crossfader/releases/download/v0.3.1/MK-Crossfader-0.3.1.pkg"
  name "MK-Crossfader"
  desc "Free audio plugin"
  homepage "https://github.com/mks-devx/MK-Crossfader"
  depends_on :macos
  pkg "MK-Crossfader-0.3.1.pkg"
end
