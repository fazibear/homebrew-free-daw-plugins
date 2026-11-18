cask "snaptune" do
  version "2.4.0"
  sha256 "d10ff86d4638e08c4d373c4256c43414b097691c4e92eecd16f729840ad18682"
  url "https://github.com/NicoFerni/snaptune/releases/download/v2.4.0/SnapTune-2.4.0-macOS.pkg"
  name "snaptune"
  desc "Free audio plugin"
  homepage "https://github.com/NicoFerni/snaptune"
  depends_on :macos
  pkg "SnapTune-2.4.0-macOS.pkg"
end
