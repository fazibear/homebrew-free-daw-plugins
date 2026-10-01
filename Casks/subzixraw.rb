cask "subzixraw" do
  version "1.0.1"
  sha256 "a22060307bb46c255d707d1488cb418565a4a7d575133ceb2556c23a5b194882"
  url "https://github.com/remiblaze/SubzixRaw/releases/download/v1.0.1/SubzixRaw_Installer.pkg"
  name "SubzixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/SubzixRaw"
  depends_on :macos
  pkg "SubzixRaw_Installer.pkg"
end
