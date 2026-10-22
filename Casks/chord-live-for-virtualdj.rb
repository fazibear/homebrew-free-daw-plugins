cask "chord-live-for-virtualdj" do
  version "2.6"
  sha256 "0cd2ae3dfd76a21161e731fa4c9c2d59130cc2f752de34699f152162c2d2a81b"
  url "https://github.com/owfrappier/Chord-Live-for-VirtualDJ/releases/download/v2.6/Chord-Live-for-VirtualDJ-2.6.0-macOS.pkg"
  name "Chord-Live-for-VirtualDJ"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/Chord-Live-for-VirtualDJ"
  depends_on :macos
  pkg "Chord-Live-for-VirtualDJ-2.6.0-macOS.pkg"
end
