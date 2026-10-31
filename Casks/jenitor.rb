cask "jenitor" do
  version "0.6.2"
  sha256 "01dd2a7d3320bca25a0bd771c83c00a18a086188c273c6bd17edd47590875eb0"
  url "https://github.com/helysx99/Jenitor/releases/download/v0.6.2/JENITOR-0.6.2-unsigned.pkg"
  name "Jenitor"
  desc "Free audio plugin"
  homepage "https://github.com/helysx99/Jenitor"
  depends_on :macos
  pkg "JENITOR-0.6.2-unsigned.pkg"
end
