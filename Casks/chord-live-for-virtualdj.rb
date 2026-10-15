cask "chord-live-for-virtualdj" do
  version "2.4.1"
  sha256 "6e85cb454f0cff6a1d14ac024d838045f2d39cf43fb0d4a1e444f83cd1e5b86a"
  url "https://github.com/owfrappier/Chord-Live-for-VirtualDJ/releases/download/v2.4.1/Chord-Live-for-VirtualDJ-2.4.1-macOS.pkg"
  name "Chord-Live-for-VirtualDJ"
  desc "Free audio plugin"
  homepage "https://github.com/owfrappier/Chord-Live-for-VirtualDJ"
  depends_on :macos
  pkg "Chord-Live-for-VirtualDJ-2.4.1-macOS.pkg"
end
