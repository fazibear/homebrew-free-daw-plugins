cask "sub-ninja" do
  version "1.3.1"
  sha256 :no_check
  url "https://dsp.thehim.com/downloads/SubNinja-1.3.1-macOS.pkg"
  name "Sub Ninja"
  desc "Kick and bass mixing assistant plugin"
  homepage "https://dsp.thehim.com/downloads"
  depends_on :macos
  pkg "SubNinja-1.3.1-macOS.pkg"
end
