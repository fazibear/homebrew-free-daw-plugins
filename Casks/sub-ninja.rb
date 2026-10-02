cask "sub-ninja" do
  version "1.3.1"
  sha256 :no_check
  url "https://dsp.thehim.com/storage/downloads/SubNinja-macOS-1.3.1.pkg"
  name "Sub Ninja"
  desc "Kick and bass mixing assistant plugin"
  homepage "https://dsp.thehim.com/downloads"
  depends_on :macos
  pkg "SubNinja-macOS-1.3.1.pkg"
end
