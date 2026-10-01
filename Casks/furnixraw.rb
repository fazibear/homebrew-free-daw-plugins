cask "furnixraw" do
  version "1.0.1"
  sha256 "d93b3be81e056af89ee3706ebe1f8cd1c908e4e32ffedcc0690eaacdb1ddd173"
  url "https://github.com/remiblaze/FurnixRaw/releases/download/v1.0.1/FurnixRaw_Installer.pkg"
  name "FurnixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/FurnixRaw"
  depends_on :macos
  pkg "FurnixRaw_Installer.pkg"
end
