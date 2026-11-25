cask "distortion" do
  version "2.5.0"
  sha256 "e8850f5fafcbb69ab2238b1fb009376cfc4f7f69f98ddb0540694ddd3b4b1f4a"
  url "https://github.com/elarmuzik1993/Distortion/releases/download/v2.5.0/SledgeDistortion-2.5.0-macOS.pkg"
  name "Distortion"
  desc "Free audio plugin"
  homepage "https://github.com/elarmuzik1993/Distortion"
  depends_on :macos
  pkg "SledgeDistortion-2.5.0-macOS.pkg"
end
