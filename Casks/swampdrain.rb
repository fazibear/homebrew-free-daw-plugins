cask "swampdrain" do
  version "0.9.2"
  sha256 "28287f9b76490690f4ecf585ea1ff05719dafc823e7fb037d417eff9d46f24bd"
  url "https://github.com/fazibear/swampdrain.fazibear.me/releases/download/0.9.2/swampdrain-macos.pkg"
  name "SwampDrain"
  desc "Audio plugin"
  homepage "https://swampdrain.fazibear.me"
  depends_on :macos
  pkg "swampdrain-macos.pkg"
end
