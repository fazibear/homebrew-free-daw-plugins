cask "clampit" do
  version "1.1.0"
  sha256 "61255564fa73786dda52ce573f8e0064557592faacc135b8a335d4fc3f9a1ad8"
  url "https://github.com/remiblaze/Clampit/releases/download/v1.1.0/Clampit_Installer.pkg"
  name "Clampit"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Clampit"
  depends_on :macos
  pkg "Clampit_Installer.pkg"
end
