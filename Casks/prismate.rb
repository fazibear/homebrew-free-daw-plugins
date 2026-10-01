cask "prismate" do
  version "1.1.3"
  sha256 "b06f32f786096aff84addc4d3ebef6e6fc969156d3789a4a0125105d7f5d979e"
  url "https://github.com/remiblaze/Prismate/releases/download/v1.1.3/Prismate_Installer.pkg"
  name "Prismate"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Prismate"
  depends_on :macos
  pkg "Prismate_Installer.pkg"
end
