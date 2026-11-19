cask "ludensscope" do
  version "1.0.1"
  sha256 "607654ccdd1719067a9f3e315d4290ee083034d7b43e2888a38fe549348d40d9"
  url "https://github.com/ltillegal/ludensscope/releases/download/v1.0.1/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
