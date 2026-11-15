cask "ludensscope" do
  version "0.4.5"
  sha256 "79b63546a9e3d2cf95c1ca9b3972f4db4b596c6f58ac14f97262103e35cf906a"
  url "https://github.com/ltillegal/ludensscope/releases/download/v0.4.5/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
