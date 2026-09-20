cask "airwindows-consolidated" do
  version :latest
  sha256 :no_check
  url "https://github.com/baconpaul/airwin2rack/releases/download/DAWPlugin/airwindows-consolidated-macOS-latest.dmg"
  name "Airwindows Consolidated"
  desc "Collection of Airwindows effects in one plugin"
  homepage "https://github.com/baconpaul/airwin2rack"
  depends_on :macos
  pkg "*.pkg"
end
