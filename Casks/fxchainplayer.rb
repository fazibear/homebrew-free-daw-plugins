cask "fxchainplayer" do
  version "1.5.8"
  sha256 "aea72eb14272c41717e5ea082f9345d060c9e51168a19a344c5a4c1fec2a07af"
  url "https://github.com/akustikrausch/FXChainPlayer-Releases/releases/download/v1.5.8/FXChainPlayer-1.5.8-macos.pkg"
  name "FXChainPlayer-Releases"
  desc "Free audio plugin"
  homepage "https://github.com/akustikrausch/FXChainPlayer-Releases"
  depends_on :macos
  pkg "FXChainPlayer-1.5.8-macos.pkg"
end
