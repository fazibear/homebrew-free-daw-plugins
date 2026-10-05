cask "fxchainplayer" do
  version "1.6.1"
  sha256 "c063e93174c19c0d1220df473878eb7db80e4477e3a90815edc6e0fa4730f0c5"
  url "https://github.com/akustikrausch/FXChainPlayer-Releases/releases/download/v1.6.1/FXChainPlayer-1.6.1-macos.pkg"
  name "FXChainPlayer-Releases"
  desc "Free audio plugin"
  homepage "https://github.com/akustikrausch/FXChainPlayer-Releases"
  depends_on :macos
  pkg "FXChainPlayer-1.6.1-macos.pkg"
end
