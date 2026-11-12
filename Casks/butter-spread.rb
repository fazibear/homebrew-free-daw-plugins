cask "butter-spread" do
  version "1.0.0"
  sha256 "acf230ad05a50c43aa7eb562f229e6d386b838efec8ff9e9b777d37f055f4b51"
  url "https://github.com/sarthakzzz/butter-spread/releases/download/v1.0.0/Butter-Spread-1.0.0-mac.pkg"
  name "butter-spread"
  desc "Free audio plugin"
  homepage "https://github.com/sarthakzzz/butter-spread"
  depends_on :macos
  pkg "Butter-Spread-1.0.0-mac.pkg"
end
