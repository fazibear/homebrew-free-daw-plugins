cask "chord-live-for-virtualdj" do
  version "2.9"
  sha256 "b4c6f095363e6e0bc5d8728cdc593ab920626ea629e165149881830516fce915"
  url "https://github.com/owfrappier/Chord-Live-for-VirtualDJ/releases/download/v2.9/Chord-Live-for-VirtualDJ-2.9.0-macOS.pkg"
  name "Chord-Live-for-VirtualDJ"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/Chord-Live-for-VirtualDJ"
  depends_on :macos
  pkg "Chord-Live-for-VirtualDJ-2.9.0-macOS.pkg"
end
