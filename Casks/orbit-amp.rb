cask "orbit-amp" do
  version "0.13.0"
  sha256 "ba6988d023db6f1a0bf7ef75c71b6de9ba3259b5743f9133ccf9a524bea65659"
  url "https://github.com/darwinscat/orbit-amp/releases/download/v0.13.0/darwinscat-amps-0.13.0-macos.pkg"
  name "orbit-amp"
  desc "Free audio plugin"
  homepage "https://github.com/darwinscat/orbit-amp"
  depends_on :macos
  pkg "darwinscat-amps-0.13.0-macos.pkg"
end
