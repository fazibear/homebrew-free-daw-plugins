cask "brack" do
  version "2.0.0"
  sha256 "a05e1e3bb763e618d41ae7b3d50357e39b3fb1cb2ec83fb158a727524a7754bd"
  url "https://github.com/hsshss/brack/releases/download/v2.0.0/brack-2.0.0-osx-universal.zip"
  name "brack"
  desc "Free audio plugin"
  homepage "https://github.com/hsshss/brack"
  depends_on :macos
  app "brack-2.0.0-osx-universal/Brack.app"
end
