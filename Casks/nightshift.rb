cask "nightshift" do
  version "1.0.0"
  sha256 "99dc496c7361e9f372e9a3b731bc35a925c109b6cae46dedf5b17b152e41632c"
  url "https://github.com/ExfilBravo/nightshift/releases/download/v1.0.0/NightShift-1.0.0-mac.pkg"
  name "nightshift"
  desc "Free audio plugin"
  homepage "https://github.com/ExfilBravo/nightshift"
  depends_on :macos
  pkg "NightShift-1.0.0-mac.pkg"
end
