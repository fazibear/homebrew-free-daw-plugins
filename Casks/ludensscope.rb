cask "ludensscope" do
  version "0.4.8"
  sha256 "eea0ff3b3b04f98d8a91ccf605e663736ee874a25744255a8420c4490f240a30"
  url "https://github.com/ltillegal/ludensscope/releases/download/v0.4.8/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
