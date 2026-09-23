cask "cycloscope" do
  version "0.2.0"
  sha256 "9d6ac292b731ab17901289f47d84da6c99d053050c7f2e001b495050fb6bcf71"
  url "https://github.com/EyalDelarea/Cycloscope/releases/download/v0.2.0/Cycloscope-0.2.0-macOS.pkg"
  name "Cycloscope"
  desc "Free audio plugin"
  homepage "https://github.com/EyalDelarea/Cycloscope"
  depends_on :macos
  pkg "Cycloscope-0.2.0-macOS.pkg"
end
