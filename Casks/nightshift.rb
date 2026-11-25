cask "nightshift" do
  version "0.4.2"
  sha256 "3679df5e44a06a11d3f306cf6bca1dc88d2e3f382448cdc231b5cb6c358cb044"
  url "https://github.com/ExfilBravo/nightshift/releases/download/v0.4.2/NightShift-0.4.2-mac.pkg"
  name "nightshift"
  desc "Free audio plugin"
  homepage "https://github.com/ExfilBravo/nightshift"
  depends_on :macos
  pkg "NightShift-0.4.2-mac.pkg"
end
