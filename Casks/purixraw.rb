cask "purixraw" do
  version "1.0.1"
  sha256 "8a9b9d58c7b733b77ff6d6105b2496a9705f50c4b24808bb498d82d35569b069"
  url "https://github.com/remiblaze/PurixRaw/releases/download/v1.0.1/PurixRaw_Installer.pkg"
  name "PurixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/PurixRaw"
  depends_on :macos
  pkg "PurixRaw_Installer.pkg"
end
