cask "squelchbox" do
  version :latest
  sha256 :no_check
  url "https://github.com/Hornfisk/squelchbox/releases/latest/download/SquelchBox-macOS.zip"
  name "SquelchBox"
  desc "Noise gate and squelch audio plugin"
  homepage "https://github.com/Hornfisk/squelchbox"
  depends_on :macos
  artifact "VST3", target: "/Library/Audio/Plug-Ins/VST3"
  artifact "AU", target: "/Library/Audio/Plug-Ins/Components"
end
