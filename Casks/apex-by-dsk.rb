cask "apex-by-dsk" do
  version "1.0.0"
  sha256 "211e5250e0c85a1bb57951c382facdf753866893319325976ccc86c448ee59fc"
  url "https://github.com/dskmusic/apex-by-dsk/releases/download/v1.0.0/Apex-by-DSK-macos-universal-au.zip"
  name "apex-by-dsk"
  desc "Free audio plugin"
  homepage "https://github.com/dskmusic/apex-by-dsk"
  depends_on :macos
  artifact "Apex by DSK.component", target: "#{Dir.home}/Library/Audio/Plug-Ins/Components/Apex by DSK.component"
end
