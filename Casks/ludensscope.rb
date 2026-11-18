cask "ludensscope" do
  version "0.4.9"
  sha256 "f292275b1ad0390ef924fecd63d16a52716375f91e0f925041d784aa8a6ab75d"
  url "https://github.com/ltillegal/ludensscope/releases/download/v0.4.9/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
