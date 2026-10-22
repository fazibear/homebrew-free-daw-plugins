cask "butter-spread" do
  version "1.0.0"
  sha256 "c2a4541109b2ff7999eafc9bbba7f386bfe2334e9b0dd526462667e419b5188a"
  url "https://github.com/sarthakzzz/butter-spread/releases/download/v1.0.0/Butter-Spread-1.0.0-mac.pkg"
  name "butter-spread"
  desc "Free audio plugin"
  homepage "https://github.com/sarthakzzz/butter-spread"
  depends_on :macos
  pkg "Butter-Spread-1.0.0-mac.pkg"
end
