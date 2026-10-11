cask "brack" do
  version "1.1.0"
  sha256 "89e3a35bad482931bd320d45fb045c9f1767a08e31d683c6b2c2b927913548b3"
  url "https://github.com/hsshss/brack/releases/download/v1.1.0/brack-1.1.0-osx-universal.zip"
  name "brack"
  desc "Free audio plugin"
  homepage "https://github.com/hsshss/brack"
  depends_on :macos
  app "brack-1.1.0-osx-universal/Brack.app"
end
