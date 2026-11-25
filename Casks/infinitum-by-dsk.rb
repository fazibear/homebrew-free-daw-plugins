cask "infinitum-by-dsk" do
  version "1.1.0"
  sha256 "3caf43443fe96690a56e751f908303f2aa0ebea45cf5fabd8623d4b4200f1dca"
  url "https://github.com/dskmusic/infinitum-by-dsk/releases/download/v1.1.0/Infinitum-by-DSK-macos-universal-au.zip"
  name "infinitum-by-dsk"
  desc "Free audio plugin"
  homepage "https://github.com/dskmusic/infinitum-by-dsk"
  depends_on :macos
  artifact "Infinitum by DSK.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Infinitum by DSK.component"
end
