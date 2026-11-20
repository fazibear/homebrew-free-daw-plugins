cask "ludensscope" do
  version "1.0.6"
  sha256 "f36216b3e0e4292bed6dd1cf6e4ef73ab66ed2794a73320b28de751ac38e120d"
  url "https://github.com/ltillegal/ludensscope/releases/download/v1.0.6/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
