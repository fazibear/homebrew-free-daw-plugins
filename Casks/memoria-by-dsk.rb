cask "memoria-by-dsk" do
  version "1.1.0"
  sha256 "fbb32fe1af35a12e4b315e370204b5878ba74ccac1be3c5d89b58074f448528f"
  url "https://github.com/dskmusic/memoria-by-dsk/releases/download/v1.1.0/Memoria-by-DSK-macos-universal-au.zip"
  name "memoria-by-dsk"
  desc "Free audio plugin"
  homepage "https://github.com/dskmusic/memoria-by-dsk"
  depends_on :macos
  artifact "Memoria by DSK.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Memoria by DSK.component"
end
