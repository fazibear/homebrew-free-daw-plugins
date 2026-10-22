cask "snaptune" do
  version "2.0.0"
  sha256 "ca82224bbf1d35edaf45b8dcd3c6e5f91ae7c19f53160e6bc0fd2a20c83d2526"
  url "https://github.com/NicoFerni/snaptune/releases/download/v2.0.0/SnapTune-2.0.0-macOS.pkg"
  name "snaptune"
  desc "Free audio plugin"
  homepage "https://github.com/NicoFerni/snaptune"
  depends_on :macos
  pkg "SnapTune-2.0.0-macOS.pkg"
end
