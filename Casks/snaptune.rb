cask "snaptune" do
  version "2.1.0"
  sha256 "ac5df079a7ebaba61c862162c4413d628672a4c8a3a5b3715239fe99135aabab"
  url "https://github.com/NicoFerni/snaptune/releases/download/v2.1.0/SnapTune-2.1.0-macOS.pkg"
  name "snaptune"
  desc "Free audio plugin"
  homepage "https://github.com/NicoFerni/snaptune"
  depends_on :macos
  pkg "SnapTune-2.1.0-macOS.pkg"
end
