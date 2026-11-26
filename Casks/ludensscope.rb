cask "ludensscope" do
  version "1.1.0"
  sha256 "a69679dc5cb1f7e5bb9c8a73441d12599b4e434a8deea2ddc39f68fcecd4f24a"
  url "https://github.com/ltillegal/ludensscope/releases/download/v1.1.0/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
