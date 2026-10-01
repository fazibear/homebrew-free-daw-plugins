cask "bitdos" do
  version "1.2"
  sha256 "9c7f9c38645505aedb0ffe65a5869d34f59ded8f7965f46317602ea85afb4983"
  url "https://github.com/astriiddev/BitDOS-VST/releases/download/1.2/BitDOS_macOS.pkg"
  name "BitDOS"
  desc "Free audio plugin"
  homepage "https://github.com/astriiddev/BitDOS-VST"
  depends_on :macos
  pkg "BitDOS_macOS.pkg"
end
