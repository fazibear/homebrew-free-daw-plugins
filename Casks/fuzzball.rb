cask "fuzzball" do
  version "1.1"
  sha256 :no_check
  url "https://github.com/fake-industries/fuzzball/releases/download/v1.1/FuzzBall-v1.1.pkg"
  name "fuzzball"
  desc "Free audio plugin"
  homepage "https://github.com/fake-industries/fuzzball"
  depends_on :macos
  pkg "FuzzBall-v1.1.pkg"
end
