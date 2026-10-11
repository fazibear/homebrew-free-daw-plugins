cask "gigchain-keys" do
  version "0.4.0"
  sha256 "057172e9bae8fb0014bf6fe4e1623f550941e785aa2f4bb6498185dcc8da42f4"
  url "https://github.com/xDarkzx/GigChain-Keys/releases/download/v0.4.0/GigChainKeys-0.4.0-arm64.dmg"
  name "GigChain-Keys"
  desc "Free audio plugin"
  homepage "https://github.com/xDarkzx/GigChain-Keys"
  depends_on :macos
  container type: :dmg
  app "GigChain Keys.app"
end
