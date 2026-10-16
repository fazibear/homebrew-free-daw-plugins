cask "downloads" do
  version "telescope-v0.3.1"
  sha256 "2a14bbb850ccb4845dc193697a200510dda0c1ed9dc98e332f2468b361b36e51"
  url "https://github.com/ovniaudio/downloads/releases/download/telescope-v0.3.1/OVNI-TELESCOPE-v0.3.1.pkg"
  name "downloads"
  desc "Free audio plugin"
  homepage "https://github.com/ovniaudio/downloads"
  depends_on :macos
  pkg "OVNI-TELESCOPE-v0.3.1.pkg"
end
