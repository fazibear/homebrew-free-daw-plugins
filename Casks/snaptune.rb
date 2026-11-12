cask "snaptune" do
  version "2.3.0"
  sha256 "f74f667752a2dfc6f1bee0c1cd7fdfc672a56599de8d76006ed4ab098a87d6d9"
  url "https://github.com/NicoFerni/snaptune/releases/download/v2.3.0/SnapTune-2.3.0-macOS.pkg"
  name "snaptune"
  desc "Free audio plugin"
  homepage "https://github.com/NicoFerni/snaptune"
  depends_on :macos
  pkg "SnapTune-2.3.0-macOS.pkg"
end
