cask "ovni" do
  version "0.4.0"
  sha256 "b82545b2fb9fb6013a4b3968bc25aa52da68503b804389ca57aaa95331700188"
  url "https://github.com/ovniaudio/ovni/releases/download/v0.4.0/OVNI-SUPERNOVA-v0.4.0.pkg"
  name "ovni"
  desc "Free audio plugin"
  homepage "https://github.com/ovniaudio/ovni"
  depends_on :macos
  pkg "OVNI-SUPERNOVA-v0.4.0.pkg"
end
