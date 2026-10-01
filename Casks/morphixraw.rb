cask "morphixraw" do
  version "1.0.1"
  sha256 "db782f926e4f784a3e2edfb466c4e4dc0e50a9e7db28a4885dbec382af14e2b8"
  url "https://github.com/remiblaze/MorphixRaw/releases/download/v1.0.1/MorphixRaw_Installer.pkg"
  name "MorphixRaw"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/MorphixRaw"
  depends_on :macos
  pkg "MorphixRaw_Installer.pkg"
end
