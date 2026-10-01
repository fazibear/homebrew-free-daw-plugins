cask "pumpit" do
  version "1.0.1"
  sha256 "0f405f57b60c123f2506180676b749dde820648efccdfa4544d6dbfa0f75701c"
  url "https://github.com/remiblaze/Pumpit/releases/download/v1.0.1/Pumpit_Installer.pkg"
  name "Pumpit"
  desc "Free audio plugin"
  homepage "https://github.com/remiblaze/Pumpit"
  depends_on :macos
  pkg "Pumpit_Installer.pkg"
end
