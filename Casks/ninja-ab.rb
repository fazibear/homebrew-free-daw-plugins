cask "ninja-ab" do
  version "1.0.1"
  sha256 :no_check
  url "https://dsp.thehim.com/storage/downloads/NinjaAB-macOS-1.0.1.pkg"
  name "Ninja AB"
  desc "Reference and mix comparison plugin"
  homepage "https://dsp.thehim.com/downloads"
  depends_on :macos
  pkg "NinjaAB-macOS-1.0.1.pkg"
end
