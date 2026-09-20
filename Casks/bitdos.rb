cask "bitdos" do
  version "1.2"
  sha256 :no_check
  url "https://github.com/astriiddev/BitDOS-VST/releases/download/1.2/BitDOS_macOS.pkg"
  name "Bitdos"
  desc "Free audio plugin"
  homepage "https://github.com/astriiddev/BitDOS-VST"
  depends_on :macos
  pkg "BitDOS_macOS.pkg"
end
