cask "reable" do
  version "0.1.0-beta.3"
  sha256 "0fc1bb77d2b1fefc8aca4b6cc780cb529fcb404f9fce957d2e519ea77a0f1fdc"
  url "https://github.com/flapflap/ReAble/releases/download/v0.1.0-beta.3/ReAble-0.1.0-beta.3.dmg"
  name "ReAble"
  desc "Free audio plugin"
  homepage "https://github.com/flapflap/ReAble"
  depends_on :macos
  container type: :dmg
  app "ReAble.app"
end
