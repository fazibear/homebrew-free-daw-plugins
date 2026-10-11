cask "velcal" do
  version "0.0.4"
  sha256 "2cb217822774e9bafce23a14ad0074fc5c9d70c0e13992f8b3aa359ac606589e"
  url "https://github.com/SH4DOWSIX/VelCal/releases/download/0.0.4/VelCal-0.0.4-macOS-universal.pkg"
  name "VelCal"
  desc "Free audio plugin"
  homepage "https://github.com/SH4DOWSIX/VelCal"
  depends_on :macos
  pkg "VelCal-0.0.4-macOS-universal.pkg"
end
