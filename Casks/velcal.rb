cask "velcal" do
  version "0.0.5"
  sha256 "b3b88a2c4b47286c39debf1f25d60ed8ee6d24891a830312f4f2e627c0ec2cba"
  url "https://github.com/SH4DOWSIX/VelCal/releases/download/0.0.5/VelCal-0.0.5-macOS-universal.pkg"
  name "VelCal"
  desc "Free audio plugin"
  homepage "https://github.com/SH4DOWSIX/VelCal"
  depends_on :macos
  pkg "VelCal-0.0.5-macOS-universal.pkg"
end
