cask "scqwatcha" do
  version "0.1.0"
  sha256 "93cc7b10953482cbe4f83edbdff4282025aab4b5c79bbcefd075cc1b28e8a10d"
  url "https://github.com/printMoney/scqwatcha/releases/download/v0.1.0/scqwatcha-0.1.0-macOS.pkg"
  name "scqwatcha"
  desc "Free audio plugin"
  homepage "https://github.com/printMoney/scqwatcha"
  depends_on :macos
  pkg "scqwatcha-0.1.0-macOS.pkg"
end
