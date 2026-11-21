cask "ludensscope" do
  version "1.0.8"
  sha256 "960f70ad67f2756783387285e2c7547e0752a6aaf3fb137b2216ee36d0807516"
  url "https://github.com/ltillegal/ludensscope/releases/download/v1.0.8/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
