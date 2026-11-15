cask "orbit-amp" do
  version "0.10.1"
  sha256 "d15c12789263e450b620b386f2ff7df61e5182ca600465b1e85b25b8076dbe19"
  url "https://github.com/darwinscat/orbit-amp/releases/download/v0.10.1/darwinscat-amps-0.10.1-macos.pkg"
  name "orbit-amp"
  desc "Free audio plugin"
  homepage "https://github.com/darwinscat/orbit-amp"
  depends_on :macos
  pkg "darwinscat-amps-0.10.1-macos.pkg"
end
