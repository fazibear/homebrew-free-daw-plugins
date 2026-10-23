cask "chord-live-for-virtualdj" do
  version "2.8"
  sha256 "9699d0a6fefa49e957e2a41228497ba825fb6e7e57de99b1e8b2b38e98781dc1"
  url "https://github.com/owfrappier/Chord-Live-for-VirtualDJ/releases/download/v2.8/Chord-Live-for-VirtualDJ-2.8.0-macOS.pkg"
  name "Chord-Live-for-VirtualDJ"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/Chord-Live-for-VirtualDJ"
  depends_on :macos
  pkg "Chord-Live-for-VirtualDJ-2.8.0-macOS.pkg"
end
