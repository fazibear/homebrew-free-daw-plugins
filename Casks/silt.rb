cask "silt" do
  version "0.2.0"
  sha256 "cc9b5284673f9a7bab71d3650acc405d4dd1adaa264e2657e6448eb8cc72afb2"
  url "https://github.com/Jackherz/silt/releases/download/v0.2.0/Silt-0.2.0-macOS.pkg"
  name "silt"
  desc "Free audio plugin"
  homepage "https://github.com/Jackherz/silt"
  depends_on :macos
  pkg "Silt-0.2.0-macOS.pkg"
end
