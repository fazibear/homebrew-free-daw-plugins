cask "snaptune" do
  version "2.2.0"
  sha256 "3ce2295ac4f1defd52a33677f265da5b876ef977a352f4df31fd44cecfef02d3"
  url "https://github.com/NicoFerni/snaptune/releases/download/v2.2.0/SnapTune-2.2.0-macOS.pkg"
  name "snaptune"
  desc "Free audio plugin"
  homepage "https://github.com/NicoFerni/snaptune"
  depends_on :macos
  pkg "SnapTune-2.2.0-macOS.pkg"
end
