cask "butter-spread" do
  version "1.0.0"
  sha256 "5de2bd1a94c94f744485ed3919aa8511d8abfee5386d96a9fbb7c4b0347cd132"
  url "https://github.com/sarthakzzz/butter-spread/releases/download/v1.0.0/Butter-Spread-1.0.0-mac.pkg"
  name "butter-spread"
  desc "Free audio plugin"
  homepage "https://github.com/sarthakzzz/butter-spread"
  depends_on :macos
  pkg "Butter-Spread-1.0.0-mac.pkg"
end
