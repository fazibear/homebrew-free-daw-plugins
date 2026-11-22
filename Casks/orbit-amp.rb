cask "orbit-amp" do
  version "0.12.0"
  sha256 "8d900a44a6cf2904cef6e0bb11d7418af011ce255fe48389111b9bf7f3cb5a74"
  url "https://github.com/darwinscat/orbit-amp/releases/download/v0.12.0/darwinscat-amps-0.12.0-macos.pkg"
  name "orbit-amp"
  desc "Free audio plugin"
  homepage "https://github.com/darwinscat/orbit-amp"
  depends_on :macos
  pkg "darwinscat-amps-0.12.0-macos.pkg"
end
