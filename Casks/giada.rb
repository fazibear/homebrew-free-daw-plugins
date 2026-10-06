cask "giada" do
  version "1.6.0"
  sha256 "c9a6469e888432e2844bc6c90637eb8c58f969d07dd31b231796b83ccc3366c4"
  url "https://github.com/monocasual/giada/releases/download/1.6.0/giada-1.6.0-arm64-macos.zip"
  name "giada"
  desc "Free audio plugin"
  homepage "https://github.com/monocasual/giada"
  depends_on :macos
  app "giada.app"
end
