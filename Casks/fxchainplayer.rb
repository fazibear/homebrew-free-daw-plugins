cask "fxchainplayer" do
  version "1.7.3"
  sha256 "d45ae72bdd6626e2f85f50de1849c1a371d51eb25a35b711b7d300fc1594b92a"
  url "https://github.com/akustikrausch/FXChainPlayer-Releases/releases/download/v1.7.3/FXChainPlayer-1.7.3-macos.pkg"
  name "FXChainPlayer-Releases"
  desc "Free audio plugin"
  homepage "https://github.com/akustikrausch/FXChainPlayer-Releases"
  depends_on :macos
  pkg "FXChainPlayer-1.7.3-macos.pkg"
end
