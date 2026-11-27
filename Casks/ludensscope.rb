cask "ludensscope" do
  version "1.2.0"
  sha256 "35d453a4652d514b1709565455955eee66e65090784404814bc405f1ccf602ef"
  url "https://github.com/ltillegal/ludensscope/releases/download/v1.2.0/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
