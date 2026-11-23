cask "ludensscope" do
  version "1.0.11"
  sha256 "f1643f6ce2ae7399dc2eb2d9f8f93878c66885d9fbf205c80a3a242dce10733a"
  url "https://github.com/ltillegal/ludensscope/releases/download/v1.0.11/LudensScope-macos.pkg"
  name "ludensscope"
  desc "Free audio plugin"
  homepage "https://github.com/ltillegal/ludensscope"
  depends_on :macos
  pkg "LudensScope-macos.pkg"
end
